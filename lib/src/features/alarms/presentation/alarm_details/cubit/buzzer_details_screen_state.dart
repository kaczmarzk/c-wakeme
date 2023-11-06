part of 'buzzer_details_screen_cubit.dart';

@freezed
class AlarmDetailsScreenState with _$AlarmDetailsScreenState {
  const factory AlarmDetailsScreenState({
    required BuzzerDate date,
    required Set<Weekday> weekdays,
    required AlarmDetailsScreenNavigationState navigation,
    required String? name,
  }) = _AlarmDetailsScreenState;

  factory AlarmDetailsScreenState.initial([Buzzer? entity]) => AlarmDetailsScreenState(
        weekdays: {inject<CTime>().nextWeekday},
        navigation: AlarmDetailsScreenNavigationState.none,
        name: null,
        date: entity?.date ?? BuzzerDate.now(),
      );
}

enum AlarmDetailsScreenNavigationState {
  label,
  repeat,
  sound,
  none,
}
