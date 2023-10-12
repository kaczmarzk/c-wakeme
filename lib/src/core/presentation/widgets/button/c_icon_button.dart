import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';

class CIconButton extends StatelessWidget {
  const CIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      alignment: Alignment.center,
      color: CThemeColors.transparent,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: CThemeDimens.iconSize,
        color: CThemeColors.platinum,
      ),
    );
  }
}
