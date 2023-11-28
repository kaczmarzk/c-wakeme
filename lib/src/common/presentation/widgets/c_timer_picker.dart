import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/models/c_time.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';

class CTimePicker extends StatelessWidget {
  const CTimePicker({
    required this.initial,
    required this.onDateChanged,
    super.key,
  });

  final CTime initial;
  final Function(int hour, int minute) onDateChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: CupertinoTheme(
        data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: CThemeStyles.albertRegular_26.copyWith(
              color: CThemeColors.grayCloud,
            ),
          ),
        ),
        child: CupertinoDatePicker(
          initialDateTime: initial.dt,
          onDateTimeChanged: (dt) => onDateChanged(dt.hour, dt.minute),
          mode: CupertinoDatePickerMode.time,
          use24hFormat: true,
        ),
      ),
    );
  }
}
