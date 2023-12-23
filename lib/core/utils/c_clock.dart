import 'package:clock/clock.dart';
import 'package:wakeme/src/common/enums/part_of_day.dart';
import 'package:wakeme/src/common/enums/weekday.dart';

class CClock extends Clock {
  CClock([super.currentTime]);

  CClock.fixed(DateTime date) : super(() => date);

  DateTime get time => this.now();

  Weekday get weekday {
    final weekday = this.now().weekday;
    return Weekday.values[weekday - 1];
  }

  PartOfDay get partOfDay {
    final hour = this.now().hour;
    if (hour > 5 && hour < 12) return PartOfDay.morning;
    if (hour > 12 && hour < 18) return PartOfDay.afternoon;
    return PartOfDay.evening;
  }
}
