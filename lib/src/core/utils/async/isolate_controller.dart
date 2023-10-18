import 'dart:async';
import 'dart:isolate';

typedef IsolateHandler<Payload, Out> = FutureOr<void> Function(
  Payload payload,
  void Function(Out out) send,
);

class IsolateController<Out> {
  IsolateController._({
    required this.stream,
    required this.close,
  });

  static Future<void> _$entryPoint<Payload, Out>(_IsolateArgument<Payload, Out> argument) async {
    try {
      await argument();
    } finally {
      // Send a message to the main isolate about the exit.
      argument.sendPort.send(#exit);
    }
  }

  static Future<IsolateController<Out>> spawn<Payload, Out>(
    IsolateHandler<Payload, Out> handler,
    Payload payload,
  ) async {
    // Create a [ReceivePort] to receive messages from the isolate.
    // You can create more than one [ReceivePort] to receive messages from the
    // isolate. E.g. separate ports for output, errors, and control messages.
    final receivePort = ReceivePort();
    final argument = _IsolateArgument<Payload, Out>(
      handler: handler,
      payload: payload,
      // Send the [SendPort] of the [ReceivePort] to the isolate.
      sendPort: receivePort.sendPort,
    );
    final isolate = await Isolate.spawn<_IsolateArgument<Payload, Out>>(
      _$entryPoint<Payload, Out>,
      argument,
      errorsAreFatal: true,
      debugName: 'MyIsolate',
    );

    // The output stream controller of the isolate.
    final outputController = StreamController<Out>.broadcast();

    // The subscription to the receive port.
    late final StreamSubscription<Object?> rcvSubscription;

    void close() {
      // Close the receive port and the output stream controller.
      receivePort.close();
      rcvSubscription.cancel().ignore();
      outputController.close().ignore();
      isolate.kill();
    }

    // Listen to the [ReceivePort] and forward messages to the output stream.
    rcvSubscription = receivePort.listen(
      (message) {
        if (message is Out) {
          // Received a message from the isolate.
          outputController.add(message);
        } else if (message == #exit) {
          // Received a message from the isolate about the exit.
          close();
        }
      },
      onError: outputController.addError,
      cancelOnError: false,
    );

    return IsolateController<Out>._(
      // Pass the stream from [ReceivePort] to the constructor.
      stream: outputController.stream,
      close: close,
    );
  }

  /// The output stream of the isolate.
  final Stream<Out> stream;

  final void Function() close;
}

class _IsolateArgument<Payload, Out> {
  _IsolateArgument({
    required this.handler,
    required this.payload,
    required this.sendPort,
  });

  final IsolateHandler<Payload, Out> handler;

  final Payload payload;

  /// For sending messages from the spawned isolate to the main isolate.
  final SendPort sendPort;

  FutureOr<void> call() => handler(payload, sendPort.send);
}
