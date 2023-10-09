import 'package:easy_debounce/easy_debounce.dart';
import 'package:uuid/uuid.dart';

abstract interface class IEasyDebouncer {
  void debounce({required void Function() execute});

  void cancel();
}

class EasyDebouncer implements IEasyDebouncer {
  EasyDebouncer({required this.uuid, this.duration = const Duration(seconds: 1)});

  factory EasyDebouncer.create() => EasyDebouncer(
        uuid: const Uuid().v1(),
      );

  final String uuid;
  final Duration duration;

  @override
  void debounce({required void Function() execute}) {
    EasyDebounce.debounce(
      uuid,
      duration,
      execute,
    );
  }

  @override
  void cancel() {
    EasyDebounce.cancel(uuid);
  }
}
