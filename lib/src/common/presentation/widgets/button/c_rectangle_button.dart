import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/c_core/c_component.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';

class CRectangleButton extends CComponent {
  const CRectangleButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.size,
    super.style,
    super.key,
  });

  factory CRectangleButton.invert({
    required IconData icon,
    required VoidCallback onPressed,
    required String label,
    CThemeSize size = CThemeSize.large,
  }) =>
      CRectangleButton(
        icon: icon,
        onPressed: onPressed,
        size: size,
        label: label,
        style: CThemeStyle.invert,
      );

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  double get cDimension => switch (size) {
        CThemeSize.small => 46.0,
        CThemeSize.large => 50.0,
      };

  @override
  double get cRadius => switch (size) {
        CThemeSize.small => 12.0,
        CThemeSize.large => 14.0,
      };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cDimension,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cRadius),
          color: cColors.background,
        ),
        child: CupertinoInkWell(
          onTap: onPressed,
          pressColor: CThemeColors.cinder.withOpacity(0.33),
          excludeFromSemantics: true,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: cColors.foregroundPrimary,
                  size: 22.0,
                ),
                const SizedBox(width: 2.0),
                Text(
                  label,
                  style: CThemeStyles.gilroyMedium_16.copyWith(
                    color: cColors.foregroundPrimary,
                    height: 1.55,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
