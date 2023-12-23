import 'package:flutter/material.dart';
import 'package:wakeme/src/common/extensions/build_context_ext.dart';
import 'package:wakeme/src/common/presentation/widgets/c_timer_picker.dart';

class AlarmDetailsTimePicker extends StatelessWidget {
  const AlarmDetailsTimePicker({
    required this.initial,
    required this.onDateChanged,
    super.key,
  });

  final DateTime initial;
  final Function(int hour, int minute) onDateChanged;

  static const height = 250.0;
  static const backgroundRadius = Radius.circular(50);
  static final containerRadius = BorderRadius.circular(14.0);
  static const containerHeight = height * 0.8;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.ui.size.width / 12;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(height: context.ui.padding.top),
        SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: containerHeight,
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding).copyWith(
                  top: 20.0,
                ),
                decoration: const BoxDecoration(
                  // color: ThemeColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: backgroundRadius,
                    bottomRight: backgroundRadius,
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
                  decoration: BoxDecoration(borderRadius: containerRadius),
                  child: CTimePicker(
                    initial: initial,
                    onDateChanged: onDateChanged,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
