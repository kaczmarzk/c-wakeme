import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';

class CCircleFloatingButton extends StatelessWidget {
  const CCircleFloatingButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.theme.adaptiveColor(
          dark: CThemeColors.softPeach,
          light: CThemeColors.balticSea,
        ),
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        color: CThemeColors.transparent,
        onPressed: onPressed,
        minSize: 70.0,
        child: Icon(
          icon,
          size: CThemeDimens.iconSize,
          color: context.theme.adaptiveColor(
            dark: CThemeColors.cinder,
            light: CThemeColors.carbonGray,
          ),
        ),
      ),
    );
  }
}
