import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';

class CTimePicker extends StatelessWidget {
  const CTimePicker({
    required this.initial,
    required this.onDateChanged,
    super.key,
  });

  final BuzzerDate initial;
  final Function(BuzzerDate date) onDateChanged;

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
          initialDateTime: DateTime.now(),
          onDateTimeChanged: _onDateTimeChanged,
          mode: CupertinoDatePickerMode.time,
          use24hFormat: true,
        ),
      ),
    );
  }

  void _onDateTimeChanged(DateTime time) {
    final entity = initial.copyWith(hour: time.hour, minute: time.minute);
    onDateChanged(entity);
  }
}
