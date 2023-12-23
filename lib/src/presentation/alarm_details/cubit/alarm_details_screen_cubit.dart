import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:wakeme/core/utils/c_clock.dart';
import 'package:wakeme/core/utils/c_debounce.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_entity.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_time_entity.dart';
import 'package:wakeme/src/features/alarms/domain/repositories/alarms_repository.dart';

part 'alarm_details_screen_cubit.freezed.dart';

part 'alarm_details_screen_state.dart';

@injectable
class AlarmDetailsScreenCubit extends Cubit<AlarmDetailsScreenState> {
  AlarmDetailsScreenCubit(
    this.clock,
    this.debouncer,
    this._repository,
  ) : super(AlarmDetailsScreenState.initial(clock));

  final CClock clock;
  final CDebounce debouncer;
  final AlarmsRepository _repository;

  void init([AlarmEntity? alarm]) {
    if (alarm != null) emit(state.copyWith(alarm: alarm));
  }

  void onDateChanged(int hour, int minute) {
    debouncer.debounce(
      execute: () {
        final time = state.alarm.time.copyWith(hour: hour, minute: minute);
        final alarm = state.alarm.copyWith(time: time);
        emit(state.copyWith(alarm: alarm));
      },
    );
  }

  void onRepeatChanged(Set<Weekday>? value) {
    if (value == null) return;

    // to sort weekdays
    final repeated = Weekday.values.where((e) => value.contains(e)).toSet();
    final alarm = state.alarm.copyWith(repeated: repeated);
    emit(state.copyWith(alarm: alarm));
  }

  void onLabelChanged(String? name) {
    if (name == null) return;
    final alarm = state.alarm.copyWith(name: name);
    emit(state.copyWith(alarm: alarm));
  }

  void handleSave() {
    _repository.add(state.alarm);
    emit(state.copyWith(signal: const AlarmDetailsScreenSignal.onSaved()));
  }

  @override
  Future<void> close() {
    debouncer.cancel();
    return super.close();
  }
}
