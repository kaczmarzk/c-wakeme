import 'package:flutter/material.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/core/utils/c_clock.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get ui => MediaQuery.of(this);

  CClock get clock => inject<CClock>();
}
