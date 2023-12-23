import 'package:easy_debounce/easy_debounce.dart';
import 'package:uuid/uuid.dart';

class CDebounce {
  CDebounce()
      : _uuid = const Uuid().v1(),
        _duration = const Duration(seconds: 1);

  final String _uuid;
  final Duration _duration;

  void debounce({
    required void Function() execute,
    Duration? duration,
  }) =>
      EasyDebounce.debounce(
        _uuid,
        duration ?? _duration,
        execute,
      );

  void cancel() => EasyDebounce.cancel(_uuid);
}
