import 'package:flutter/material.dart';

abstract final class CThemeStyles {
  static const _gilroy = 'Gilroy';
  static const _gilroyBold = TextStyle(fontFamily: _gilroy, fontWeight: FontWeight.w600);
  static const _gilroyMedium = TextStyle(fontFamily: _gilroy, fontWeight: FontWeight.w500);

  static TextStyle get gilroyBold_16 => _gilroyBold.copyWith(fontSize: 16.0);

  static TextStyle get gilroyBold_20 => _gilroyBold.copyWith(fontSize: 20.0);

  static TextStyle get gilroyBold_24 => _gilroyBold.copyWith(fontSize: 24.0);

  // medium
  static TextStyle get gilroyMedium_16 => _gilroyMedium.copyWith(fontSize: 16.0);

  static TextStyle get gilroyMedium_20 => _gilroyMedium.copyWith(fontSize: 20.0);

  static TextStyle get gilroyMedium_24 => _gilroyMedium.copyWith(fontSize: 24.0);
}
