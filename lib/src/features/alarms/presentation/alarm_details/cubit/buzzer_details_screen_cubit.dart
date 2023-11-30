import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/core/service/debounce/easy_debouncer.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/common/models/c_time.dart';

part 'buzzer_details_screen_state.dart';

@injectable
class AlarmDetailsScreenCubit extends Cubit<AlarmDetailsScreenState> {
  AlarmDetailsScreenCubit(
    @factoryParam CTime time,
    this.debouncer,
  ) : super(AlarmDetailsScreenState.initial(time));

  final EasyDebouncer debouncer;

  void onDateChanged(int hour, int minute) {
    debouncer.debounce(
      execute: () {
        // final date = state.date.copyWith(hour: hour, minute: minute);
        // final weekdays = _handleWeekdayChanged(entity: date);
        // emit(state.copyWith(date: date, weekdays: weekdays));
      },
    );
  }

  void onRepeatChanged(Set<Weekday>? value) {
    if (value == null) return;

    // to sort weekdays
    // final weekdays = Weekday.values.where((e) => value.contains(e)).toSet();
    // final date = state.date.copyWith(repeat: weekdays);
    // emit(state.copyWith(date: date, weekdays: weekdays));
  }

  void onLabelChanged(String? name) {
    // emit(state.copyWith(name: name));
  }

  void handleSave() {
    if ((state.name).isEmpty) return;
    _handleWeekdayChanged();
    // repository.add(label: state.name!, date: state.date);
  }

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
