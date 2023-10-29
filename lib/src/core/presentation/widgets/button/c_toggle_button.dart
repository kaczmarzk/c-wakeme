import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';

class CToggleButton extends CComponent {
  const CToggleButton({
    required this.label,
    required this.active,
    required this.onPressed,
    super.key,
  }) : super(
          style: active ? CThemeStyle.invert : CThemeStyle.base,
        );

  final String label;
  final VoidCallback onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) => Container(
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: cColors.background,
        ),
        child: CupertinoInkWell(
          onTap: onPressed,
          pressColor: cColors.pressColor,
          child: Center(
            child: Text(
              label,
              style: CThemeStyles.gilroyMedium_16.copyWith(
                color: cColors.foregroundPrimary,
                fontSize: 14,
              ),
            ),
          ),
        ),
      );
}
