import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/core/presentation/theme/theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/theme_styles.dart';

class BuzzerDetailsCupertinoTimePicker extends StatelessWidget {
  const BuzzerDetailsCupertinoTimePicker({
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
            dateTimePickerTextStyle: ThemeStyles.albertSansRegular.copyWith(
              color: ThemeColors.black,
              fontSize: 26.0,
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
    final entity = BuzzerDate(weekday: initial.weekday, hour: time.hour, minute: time.minute);
    onDateChanged(entity);
  }
}
