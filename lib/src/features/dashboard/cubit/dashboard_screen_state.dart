part of 'dashboard_screen_cubit.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  const factory DashboardScreenState({
    required List<Buzzer> buzzers,
    required DashboardScreenNavigationState navigation,
  }) = _DashboardScreenState;

  factory DashboardScreenState.initial() => const DashboardScreenState(
        buzzers: [],
        navigation: DashboardScreenNavigationState.none,
      );
}

enum DashboardScreenNavigationState {
  details,
  settings,
  quickAlarm,
  none,
}
