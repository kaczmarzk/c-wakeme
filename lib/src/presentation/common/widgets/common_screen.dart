import 'dart:ui';

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
        body: Stack(
          children: [
            const _BackdropBackground(),
            SafeArea(
              top: false,
              child: body,
            ),
          ],
        ),
      );
}

class _BackdropBackground extends StatelessWidget {
  const _BackdropBackground();

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
                opacity: 0.4,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 50,
                tileMode: TileMode.clamp,
              ),
              child: Container(),
            ),
          ),
        ],
      );
}
