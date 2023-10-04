import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/routing/app_router.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter get router => AppRouter();
}
