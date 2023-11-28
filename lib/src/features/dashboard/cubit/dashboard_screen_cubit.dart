import 'dart:core';

import 'package:clock/clock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/presentation/c_core/c_cubit.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/alarms/domain/repository/alarms_repository.dart';

part 'dashboard_screen_cubit.freezed.dart';
part 'dashboard_screen_state.dart';

@injectable
class DashboardScreenCubit extends CCubit<DashboardScreenState> {
  DashboardScreenCubit(this._repository) : super(DashboardScreenState.initial());
  final AlarmsRepository _repository;

  void fetchBuzzers() {
    final buzzers = _repository.getAll();
    emit(state.copyWith(buzzers: buzzers));
  }

  void onAddPressed() {
    final details = state.copyWith(navigation: DashboardScreenNavigationState.details);
    cachedEmit(details);
  }

  void onSettingsPressed() {
    final details = state.copyWith(navigation: DashboardScreenNavigationState.settings);
    cachedEmit(details);
  }

  void onQuickAlarmPressed() {
    final details = state.copyWith(navigation: DashboardScreenNavigationState.quickAlarm);
    cachedEmit(details);
  }
}
