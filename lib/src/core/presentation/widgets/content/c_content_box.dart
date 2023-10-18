import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';

class CContentBox extends StatelessWidget {
  const CContentBox({
    required this.child,
    this.alignment = Alignment.center,
    this.padding = EdgeInsets.zero,
    this.height,
    this.width,
    super.key,
  });

  final Widget child;
  final Alignment alignment;
  final double? height;
  final double? width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CThemeDimens.radiusCContentBox),
        color: context.theme.adaptiveColor(
          dark: CThemeColors.darkJungle,
          light: CThemeColors.platinum,
        ),
      ),
      child: child,
    );
  }
}
