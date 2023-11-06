import 'package:clock/clock.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';

class CTime extends Clock {
  CTime([super.currentTime]);

  CTime.fixed(DateTime date) : super(() => date);
}

extension CDateWeekdayExt on CTime {
  Weekday get currentWeekday {
    final weekday = this.now().weekday;
    return Weekday.values[weekday - 1];
  }

  Weekday get nextWeekday {
    const values = Weekday.values;
    final nowIndex = values.indexOf(currentWeekday);
    if (nowIndex == values.length - 1) return values.first;
    return values[nowIndex + 1];
  }
}
