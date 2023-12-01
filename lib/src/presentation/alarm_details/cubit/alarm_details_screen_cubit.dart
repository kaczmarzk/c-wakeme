import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/core/utils/c_clock.dart';
import 'package:wakeme/core/utils/c_debounce.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm/alarm_entity.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_time/alarm_time_entity.dart';

part 'alarm_details_screen_cubit.freezed.dart';
part 'alarm_details_screen_state.dart';

@injectable
class AlarmDetailsScreenCubit extends Cubit<AlarmDetailsScreenState> {
  AlarmDetailsScreenCubit(
    this.clock,
    this.debouncer,
  ) : super(AlarmDetailsScreenState.initial(clock));

  final CClock clock;
  final CDebounce debouncer;

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

  void handleSave() {}

  @override
  Future<void> close() {
    debouncer.cancel();
    return super.close();
  }
}

extension _WeekdayExt on AlarmDetailsScreenCubit {
  /// change alarm weekday on time change by user or device
  /// if not alarm repeat not set
  Set<Weekday> _handleWeekdayChanged() {
    // if (state.date.repeat.isNotEmpty) return state.date.repeat;
    // if (dt == null && entity == null) return state.weekdays;
    //
    // final now = DateTime.now();
    // final date = now.copyWith(hour: entity?.hour ?? dt!.hour, minute: entity?.minute ?? dt!.minute);
    //
    // /// if user set current hour and minute, set alarm to next day
    // final isNow = date.hour == now.hour && date.minute == now.minute;
    // final isBefore = date.isBefore(now);
    // if (isBefore || isNow) return {cTime.currentWeekday};
    return {Weekday.thursday};
  }
}
