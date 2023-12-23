part of 'dashboard_screen_cubit.dart';

@freezed
class DashboardScreenState with _$DashboardScreenState {
  const factory DashboardScreenState({
    required List<AlarmEntity> alarms,
  }) = _DashboardScreenState;

  factory DashboardScreenState.initial() => const DashboardScreenState(
        alarms: [],
      );
}
