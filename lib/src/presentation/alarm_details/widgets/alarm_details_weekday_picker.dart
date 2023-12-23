import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_entity.dart';

class AlarmDetailsWeekdaysWidget extends StatelessWidget {
  const AlarmDetailsWeekdaysWidget({
    required this.alarm,
    required this.weekdays,
    super.key,
  });

  final AlarmEntity alarm;
  final Set<Weekday> weekdays;

  @override
  Widget build(BuildContext context) {
    return CContentBox(
      height: 60.0,
      child: LayoutBuilder(
        builder: (_, constraints) {
          /// out sunday as first
          final values = (alarm.repeated ?? {}).isEmpty ? this.weekdays : alarm.repeated!;
          final weekdays = [Weekday.sunday, ...Weekday.weekdays, Weekday.saturday];
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: weekdays
                .map(
                  (day) => _SingleDayWidget(
                    day: day,
                    value: values.contains(day),
                    dimension: constraints.maxWidth / 9,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class _SingleDayWidget extends StatelessWidget {
  const _SingleDayWidget({
    required this.day,
    required this.value,
    required this.dimension,
  });

  final bool value;
  final Weekday day;
  final double dimension;

  @override
  Widget build(BuildContext context) => SizedBox.square(
        dimension: dimension,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: value ? CThemeColors.softPeach : CThemeColors.balticSea,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            day.name[0].toUpperCase(),
            style: CThemeStyles.gilroyMedium_16.copyWith(
              color: value ? CThemeColors.darkJungle : CThemeColors.platinum,
            ),
          ),
        ),
      );
}
