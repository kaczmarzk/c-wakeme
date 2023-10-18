// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:wakeme/src/features/alarms/presentation/buzzer_details_page/alarm_details_screen.dart'
    as _i1;
import 'package:wakeme/src/features/dashboard/dashboard_screen.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AlarmDetailsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AlarmDetailsScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AlarmDetailsScreen]
class AlarmDetailsRoute extends _i3.PageRouteInfo<void> {
  const AlarmDetailsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AlarmDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlarmDetailsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i3.PageRouteInfo<void> {
  const DashboardRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
