import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';

class CSquareButton extends CComponent {
  const CSquareButton({
    required this.icon,
    required this.onPressed,
    super.size,
    super.style,
    super.key,
  });

  factory CSquareButton.invert({
    required IconData icon,
    required VoidCallback onPressed,
    CThemeSize size = CThemeSize.large,
  }) =>
      CSquareButton(
        icon: icon,
        onPressed: onPressed,
        size: size,
        style: CThemeStyle.invert,
      );

  final IconData icon;
  final VoidCallback onPressed;

  @override
  double get cDimension => switch (size) {
        CThemeSize.small => 46.0,
        CThemeSize.large => 50.0,
      };

  @override
  double get cRadius => switch (size) {
        CThemeSize.small => 14.0,
        CThemeSize.large => 16.0,
      };

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: cDimension,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cRadius),
          color: cColors.background,
        ),
        child: CupertinoInkWell(
          onTap: onPressed,
          pressColor: CThemeColors.cinder.withOpacity(0.33),
          excludeFromSemantics: true,
          child: Center(
            child: Icon(
              icon,
              color: cColors.foregroundPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
