import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';

class CScaffold extends StatelessWidget {
  const CScaffold({
    required this.body,
    this.floating,
    this.top = true,
    this.bottom = true,
    this.horizontal = true,
    super.key,
  });

  final Widget body;
  final Widget? floating;

  /// screen paddings
  final bool top;
  final bool bottom;
  final bool horizontal;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.adaptiveColor(
          dark: CThemeColors.cinder,
          light: CThemeColors.grayCloud,
        ),
        floatingActionButton: floating,
        body: SafeArea(
          bottom: bottom,
          top: top,
          child: Padding(
            padding: horizontal ? const EdgeInsets.symmetric(horizontal: CThemeDimens.paddingCScaffold) : EdgeInsets.zero,
            child: body,
          ),
        ),
      );
}
