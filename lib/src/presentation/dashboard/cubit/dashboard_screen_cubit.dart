import 'dart:core';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_entity.dart';
import 'package:wakeme/src/features/alarms/domain/repositories/alarms_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_screen_cubit.freezed.dart';

part 'dashboard_screen_state.dart';

@injectable
class DashboardScreenCubit extends Cubit<DashboardScreenState> {
  DashboardScreenCubit(this._repository) : super(DashboardScreenState.initial());
  final AlarmsRepository _repository;

  void load() {
    final alarms = _repository.getAll();
    emit(state.copyWith(alarms: alarms));
  }

  void removeAlarm(String uuid) {
    _repository.remove(uuid);
  }
}
