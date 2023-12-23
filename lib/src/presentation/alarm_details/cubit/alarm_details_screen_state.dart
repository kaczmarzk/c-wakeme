part of 'alarm_details_screen_cubit.dart';

@freezed
class AlarmDetailsScreenState with _$AlarmDetailsScreenState {
  const factory AlarmDetailsScreenState({
    required AlarmEntity alarm,
    required Set<Weekday> weekdays,
    AlarmDetailsScreenSignal? signal,
  }) = _AlarmDetailsScreenState;

  factory AlarmDetailsScreenState.initial(CClock clock) => AlarmDetailsScreenState(
        weekdays: {clock.weekday},
        alarm: AlarmEntity(
          uuid: const Uuid().v4(),
          time: AlarmTimeEntity.fromClock(clock),
        ),
      );
}

@freezed
class AlarmDetailsScreenSignal with _$AlarmDetailsScreenSignal {
  const factory AlarmDetailsScreenSignal.onSaved() = _OnSaved;
}
