import 'package:flutter/material.dart';

abstract final class ThemeStyles {
  static const _albertSans = 'AlbertSans';

  static const albertSansBold = TextStyle(
    fontFamily: _albertSans,
    fontWeight: FontWeight.w700,
  );

  static const albertSansRegular = TextStyle(
    fontFamily: _albertSans,
    fontWeight: FontWeight.w500,
  );

  static const albertSansLight = TextStyle(
    fontFamily: _albertSans,
    fontWeight: FontWeight.w400,
  );
}
