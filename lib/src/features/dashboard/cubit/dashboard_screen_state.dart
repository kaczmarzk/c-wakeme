part of 'dashboard_screen_cubit.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  const factory DashboardScreenState({
    required List<Buzzer> buzzers,
    required DashboardScreenNavigationState navigation,
    required Clock clock,
  }) = _DashboardScreenState;

  factory DashboardScreenState.initial() => const DashboardScreenState(
        clock: Clock(),
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
