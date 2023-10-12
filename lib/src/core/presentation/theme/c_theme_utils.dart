import 'package:flutter/material.dart';

abstract interface class ICThemeUtils {
  Brightness get brightness;

  Color adaptiveColor({required Color dark, required Color light});

  String adaptivePath({required String dark, required String light});
}

class CThemeUtils implements ICThemeUtils {
  CThemeUtils._(this.context);

  factory CThemeUtils.of(BuildContext context) => CThemeUtils._(context);

  final BuildContext context;

  static final dark = ThemeData(brightness: Brightness.dark);
  static final light = ThemeData(brightness: Brightness.light);

  @override
  Brightness get brightness => Theme.of(context).brightness;

  @override
  Color adaptiveColor({
    required Color dark,
    required Color light,
  }) =>
      _adaptive<Color>(dark: dark, light: light);

  @override
  String adaptivePath({
    required String dark,
    required String light,
  }) =>
      _adaptive<String>(dark: dark, light: light);

  T _adaptive<T>({required T dark, required T light}) => switch (brightness) {
        Brightness.dark => dark,
        Brightness.light => light,
      };
}
