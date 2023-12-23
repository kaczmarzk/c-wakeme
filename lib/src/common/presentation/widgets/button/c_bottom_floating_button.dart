import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';

class CBottomFloatingButton extends CComponent {
  const CBottomFloatingButton({
    required this.label,
    required this.onPressed,
    this.action,
    super.style,
    super.size,
    super.key,
  });

  factory CBottomFloatingButton.invert({
    required String label,
    required VoidCallback onPressed,
    CBottomFloatingButtonAction? action,
  }) =>
      CBottomFloatingButton(
        label: label,
        onPressed: onPressed,
        action: action,
        style: CThemeStyle.invert,
      );

  final String label;
  final VoidCallback onPressed;
  final CBottomFloatingButtonAction? action;

  @override
  double get cRadius => switch (size) {
        CThemeSize.large => 16.0,
        CThemeSize.small => 10.0,
      };

  @override
  double get cDimension => switch (size) {
        CThemeSize.large => 50.0,
        CThemeSize.small => 42.0,
      };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: cDimension,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(cRadius),
              color: cColors.background,
            ),
            child: CupertinoInkWell(
              onTap: onPressed,
              pressColor: cColors.pressColor,
              child: Center(
                child: Text(
                  label,
                  style: CThemeStyles.gilroyMedium_20.copyWith(
                    color: cColors.foregroundPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (action != null)
          Row(
            children: [
              const SizedBox(width: 10.0),
              SizedBox.square(
                dimension: cDimension,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(cRadius),
                    color: cColors.background,
                  ),
                  child: CupertinoInkWell(
                    onTap: action?.onPressed,
                    pressColor: CThemeColors.cinder.withOpacity(0.33),
                    excludeFromSemantics: true,
                    child: Center(
                      child: Icon(
                        action!.icon,
                        color: cColors.foregroundPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class CBottomFloatingButtonAction {
  CBottomFloatingButtonAction({
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;
}
