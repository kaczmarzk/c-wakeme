import 'package:flutter/material.dart';
import 'package:wakeme/src/presentation/common/theme/theme_colors.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({
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
        backgroundColor: ThemeColors.background,
        floatingActionButton: floating,
        body: SafeArea(
          top: false,
          child: body,
        ),
      );
}
