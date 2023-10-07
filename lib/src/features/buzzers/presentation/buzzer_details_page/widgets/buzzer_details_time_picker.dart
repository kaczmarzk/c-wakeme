import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/presentation/common/theme/theme_colors.dart';
import 'package:wakeme/src/presentation/common/theme/theme_styles.dart';

class BuzzerDetailsTimePicker extends StatelessWidget {
  const BuzzerDetailsTimePicker({
    required this.initial,
    required this.onDateChanged,
    super.key,
  });

  final BuzzerDate initial;
  final Function(BuzzerDate date) onDateChanged;

  static const height = 250.0;
  static const backgroundRadius = Radius.circular(100);
  static final containerRadius = BorderRadius.circular(14.0);
  static const containerHeight = height * 0.8;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.mq.size.width / 12;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: context.mq.padding.top,
          color: ThemeColors.primary,
        ),
        SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: containerHeight,
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding).copyWith(
                  top: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: ThemeColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: backgroundRadius,
                    bottomRight: backgroundRadius,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '22:00',
                    style: ThemeStyles.albertSansBold.copyWith(
                      fontSize: 23.0,
                      color: ThemeColors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height * 0.6,
                  margin: EdgeInsets.symmetric(horizontal: horizontalPadding).copyWith(
                    bottom: height * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: ThemeColors.white,
                    borderRadius: containerRadius,
                    border: Border.all(color: ThemeColors.secondary),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: _onDateTimeChanged,
                    mode: CupertinoDatePickerMode.time,
                    use24hFormat: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onDateTimeChanged(DateTime time) {
    final entity = BuzzerDate(weekday: initial.weekday, hour: time.hour, minute: time.minute);
    onDateChanged(entity);
  }
}
