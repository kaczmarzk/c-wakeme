import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';

class CIconButton extends CComponent {
  const CIconButton({
    required this.icon,
    required this.onPressed,
    super.size,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  double get cDimension => switch (size) {
        CThemeSize.small => 20.0,
        CThemeSize.large => 24.0,
      };

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      color: CThemeColors.transparent,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: cDimension,
        color: CThemeColors.platinum,
      ),
    );
  }
}
