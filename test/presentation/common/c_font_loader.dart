import 'package:flutter/services.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

abstract final class CTFontLoader {
  static Future<void> loadGilroy() {
    final loader = FontLoader('Gilroy');
    loader.addFont(rootBundle.load('assets/presentation/fonts/gilroy-semi-bold.ttf'));
    loader.addFont(rootBundle.load('assets/presentation/fonts/gilroy-medium.ttf'));
    return loader.load();
  }

  static Future<void> loadAlbert() {
    final loader = FontLoader('AlbertSans');
    loader.addFont(rootBundle.load('assets/presentation/fonts/albert-sans-regular.ttf'));
    return loader.load();
  }

  static Future<void> loadDefaults() => loadAppFonts();
}
