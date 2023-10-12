import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_utils.dart';
import 'package:wakeme/src/core/routing/app_router.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  CThemeUtils get theme => CThemeUtils.of(this);

  StackRouter get router => inject<AppRouter>();
}
