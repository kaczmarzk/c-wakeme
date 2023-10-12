import 'package:flutter/material.dart';

abstract final class CThemeStyles {
  static const _gilroy = 'Gilroy';
  static const _gilroyBold = TextStyle(fontFamily: _gilroy, fontWeight: FontWeight.w600);
  static const _gilroyMedium = TextStyle(fontFamily: _gilroy, fontWeight: FontWeight.w500);
  static const _gilroyRegular = TextStyle(fontFamily: _gilroy, fontWeight: FontWeight.w400);

  static TextStyle get gilroyBold_20 => _gilroyBold.copyWith(fontSize: 20.0);
  static TextStyle get gilroyMedium_20 => _gilroyMedium.copyWith(fontSize: 20.0);
  static TextStyle get gilroyRegular_20 => _gilroyRegular.copyWith(fontSize: 20.0);


  static TextStyle get gilroyMedium_26 => _gilroyMedium.copyWith(fontSize: 26.0);
}
