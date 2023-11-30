import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';

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
