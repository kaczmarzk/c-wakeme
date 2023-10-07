import 'package:auto_route/auto_route.dart';
import 'package:wakeme/src/core/routing/app_router.gr.dart';

@AutoRouterConfig()

class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BuzzersRoute.page),
        AutoRoute(page: BuzzerDetailsRoute.page, initial: true),
      ];
}
