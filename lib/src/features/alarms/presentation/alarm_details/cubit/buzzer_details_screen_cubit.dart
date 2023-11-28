import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:time_listener/time_listener.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/c_core/c_cubit.dart';
import 'package:wakeme/src/core/service/debounce/easy_debouncer.dart';
import 'package:wakeme/src/core/utils/c_time.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/features/alarms/domain/repository/alarms_repository.dart';

part 'buzzer_details_screen_cubit.freezed.dart';
part 'buzzer_details_screen_state.dart';

@injectable
class AlarmDetailsScreenCubit extends CCubit<AlarmDetailsScreenState> {
  AlarmDetailsScreenCubit(
    this.debouncer,
    this.dTime,
    this.cTime,
    this.repository,
  ) : super(AlarmDetailsScreenState.initial());

  final EasyDebouncer debouncer;
  final TimeListener dTime;
  final CTime cTime;
  final AlarmsRepository repository;

  void onDateChanged(int hour, int minute) {
    debouncer.debounce(
      execute: () {
        final date = state.date.copyWith(hour: hour, minute: minute);
        final weekdays = _handleWeekdayChanged(entity: date);
        emit(state.copyWith(date: date, weekdays: weekdays));
      },
    );
  }

  void onRepeatChanged(Set<Weekday>? value) {
    if (value == null) return;

    // to sort weekdays
    final weekdays = Weekday.values.where((e) => value.contains(e)).toSet();
    final date = state.date.copyWith(repeat: weekdays);
    emit(state.copyWith(date: date, weekdays: weekdays));
  }

  void onLabelChanged(String? name) {
    emit(state.copyWith(name: name));
  }

  void handleSave() {
    if ((state.name ?? '').isEmpty) return;

    repository.add(label: state.name!, date: state.date);
  }

  @override
  void init() {
    dTime.listen(
      (dt) {
        if (state.date.repeat.isNotEmpty) return;
        final weekdays = _handleWeekdayChanged(dt: dt);
        emit(state.copyWith(weekdays: weekdays));
      },
    );
  }

  @override
  Future<void> close() {
    dTime.cancel();
    debouncer.cancel();
    return super.close();
  }
}

extension _WeekdayExt on AlarmDetailsScreenCubit {
  /// change alarm weekday on time change by user or device
  /// if not alarm repeat not set
  Set<Weekday> _handleWeekdayChanged({DateTime? dt, BuzzerDate? entity}) {
    if (state.date.repeat.isNotEmpty) return state.date.repeat;
    if (dt == null && entity == null) return state.weekdays;

    final now = DateTime.now();
    final date = now.copyWith(hour: entity?.hour ?? dt!.hour, minute: entity?.minute ?? dt!.minute);

    /// if user set current hour and minute, set alarm to next day
    final isNow = date.hour == now.hour && date.minute == now.minute;
    final isBefore = date.isBefore(now);
    if (isBefore || isNow) return {cTime.currentWeekday};
    return {cTime.nextWeekday};
  }
}

extension AlarmDetailsScreenCubitNavigationExt on AlarmDetailsScreenCubit {
  void onLabelPressed() {
    cachedEmit(state.copyWith(navigation: AlarmDetailsScreenNavigationState.label));
  }

  void onRepeatPressed() {
    cachedEmit(state.copyWith(navigation: AlarmDetailsScreenNavigationState.repeat));
  }

  void onSoundPressed() {
    cachedEmit(state.copyWith(navigation: AlarmDetailsScreenNavigationState.sound));
  }
}
