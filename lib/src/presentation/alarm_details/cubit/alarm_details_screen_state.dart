part of 'alarm_details_screen_cubit.dart';

@freezed
class AlarmDetailsScreenState with _$AlarmDetailsScreenState {
  const factory AlarmDetailsScreenState({
    required AlarmEntity alarm,
    required Set<Weekday> weekdays,
  }) = _AlarmDetailsScreenState;

  factory AlarmDetailsScreenState.initial(CClock clock) => AlarmDetailsScreenState(
        weekdays: {clock.weekday},
        alarm: AlarmEntity(
          name: '',
          repeated: {},
          time: AlarmTimeEntity.fromClock(clock),
        ),
      );
}
