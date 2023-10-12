import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';

class CBottomFloatingButton extends StatelessWidget {
  const CBottomFloatingButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  static const _height = 60.0;
  static const _horizontalMargin = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      margin: const EdgeInsets.symmetric(horizontal: _horizontalMargin),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: CThemeDimens.buttonRadius,
        color: context.theme.adaptiveColor(
          dark: CThemeColors.softPeach,
          light: CThemeColors.balticSea,
        ),
      ),
      child: Text(
        label,
        style: CThemeStyles.gilroyMedium_20.copyWith(
          color: context.theme.adaptiveColor(
            dark: CThemeColors.cinder,
            light: CThemeColors.carbonGray,
          ),
        ),
      ),
    );
  }
}
