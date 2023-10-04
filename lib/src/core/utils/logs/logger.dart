// ignore_for_file: avoid_print

import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/utils/functional/failure/failure.dart';

abstract final class Logger {
  static void init() => Loggy.initLoggy(
        logPrinter: const _LogPrinter(),
      );

  static void configuration(Object? e, StackTrace? st) {
    logError('failure to configurate application to work', e, st);
    throw const FatalFailure();
  }
}

class _LogPrinter extends LoggyPrinter {
  const _LogPrinter();

  @override
  void onLog(LogRecord record) {
    switch (record.level) {
      case LogLevel.error:
        return _coloredPrint(208, null, '‼️ $record - ${record.error}');
      case LogLevel.warning:
        return _coloredPrint(226, null, '⚠️ $record');
      case LogLevel.debug:
        return _coloredPrint(69, null, '🚀 $record');
      default:
        return print(record);
    }
  }

  void _coloredPrint(int? textAsciiColor, int? backgroundAsciiColor, String text) {
    String output;
    if (textAsciiColor != null) {
      output = '\x1B[38;5;${textAsciiColor}m$text';
    }

    if (backgroundAsciiColor != null) {
      output = '\x1B[48;5;${backgroundAsciiColor}m$text';
    }

    output = '$text\x1B[0m';
    print(output);
  }
}
