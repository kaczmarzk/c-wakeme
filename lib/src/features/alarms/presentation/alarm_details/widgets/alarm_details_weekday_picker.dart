import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';

class AlarmDetailsWeekdaysWidget extends StatelessWidget {
  const AlarmDetailsWeekdaysWidget({required this.values, super.key});

  final Set<Weekday> values;

  @override
  Widget build(BuildContext context) {
    return CContentBox(
      height: 60.0,
      child: LayoutBuilder(
        builder: (_, constraints) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: Weekday.values
              .map(
                (day) => _SingleDayWidget(
                  day: day,
                  value: values.contains(day),
                  dimension: constraints.maxWidth / 9,
                ),
              )
              .toList(),
        ),
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
