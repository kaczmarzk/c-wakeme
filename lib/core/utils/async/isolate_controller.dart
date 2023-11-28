import 'dart:async';
import 'dart:isolate';

typedef IsolateHandler<Out> = FutureOr<void> Function(
  void Function(Out out) send,
);

class IsolateController<Out> {
  IsolateController._({
    required this.stream,
    required this.close,
  });

  static Future<void> _$entryPoint<Out>(_IsolateArgument<Out> argument) async {
    try {
      await argument();
    } finally {
      // Send a message to the main isolate about the exit.
      argument.sendPort.send(#exit);
    }
  }

  static Future<IsolateController<Out>> spawn<Out>(
    IsolateHandler<Out> handler,
  ) async {
    // Create a [ReceivePort] to receive messages from the isolate.
    // You can create more than one [ReceivePort] to receive messages from the
    // isolate. E.g. separate ports for output, errors, and control messages.
    final receivePort = ReceivePort();
    final argument = _IsolateArgument<Out>(
      handler: handler,
      // Send the [SendPort] of the [ReceivePort] to the isolate.
      sendPort: receivePort.sendPort,
    );
    final isolate = await Isolate.spawn<_IsolateArgument<Out>>(
      _$entryPoint<Out>,
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

class _IsolateArgument<Out> {
  _IsolateArgument({
    required this.handler,
    required this.sendPort,
  });

  final IsolateHandler<Out> handler;

  /// For sending messages from the spawned isolate to the main isolate.
  final SendPort sendPort;

  FutureOr<void> call() => handler(sendPort.send);
}
