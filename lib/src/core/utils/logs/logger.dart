// ignore_for_file: avoid_print

import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/utils/functional/failure/failure.dart';

abstract final class Logger {
  static void init() => Loggy.initLoggy(
        logPrinter: const _LogPrinter(),
      );

  static void configuration(Object? e, StackTrace? st) {
    logError('failure to configure application to work', e, st);
    throw const FatalFailure();
  }
}

class _LogPrinter extends LoggyPrinter {
  const _LogPrinter();

  @override
  void onLog(LogRecord record) {
    switch (record.level) {
      case LogLevel.error:
        return print('🆘 $record - ${record.error}');
      case LogLevel.warning:
        return print('☢️ $record');
      case LogLevel.debug:
        return print('${record.loggerName.substring(11)} - ${record.message}');
      default:
        return print(record);
    }
  }
}
