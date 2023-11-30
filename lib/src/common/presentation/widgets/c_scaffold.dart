import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';

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
        backgroundColor: CThemeColors.cinder,
        floatingActionButton: floating,
        body: SafeArea(
          bottom: bottom,
          top: top,
          child: Padding(
            padding: horizontal ? const EdgeInsets.symmetric(horizontal: 16.0) : EdgeInsets.zero,
            child: body,
          ),
        ),
      );
}
