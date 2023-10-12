import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_dimens.dart';
import 'package:wakeme/src/core/utils/extension/build_context_ext.dart';

class CScaffold extends StatelessWidget {
  const CScaffold({
    required this.body,
    this.floating,
    super.key,
    this.lazy = false,
  });

  final Widget body;
  final Widget? floating;
  final bool lazy;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.theme.adaptiveColor(
          dark: CThemeColors.cinder,
          light: CThemeColors.grayCloud,
        ),
        floatingActionButton: floating,
        body: SafeArea(
          child: Padding(
            padding: CThemeDimens.screenPadding,
            child: body,
          ),
        ),
      );
}
