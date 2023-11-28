import 'package:flutter/material.dart';
import 'package:wakeme/src/common/presentation/c_core/c_component.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_dimens.dart';

class CContentBox extends CComponent {
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
  double get cRadius => CThemeDimens.radiusCContentBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cRadius),
        color: cColors.background,
      ),
      child: child,
    );
  }
}
