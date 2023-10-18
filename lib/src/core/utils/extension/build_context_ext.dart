import 'package:flutter/material.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_utils.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  CThemeUtils get theme => CThemeUtils.of(this);
}
