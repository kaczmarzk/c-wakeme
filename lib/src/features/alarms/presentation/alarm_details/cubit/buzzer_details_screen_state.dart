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
        date: entity?.date ?? BuzzerDate.now(),
        weekdays: {Weekday.next},
        navigation: AlarmDetailsScreenNavigationState.none,
        name: null,
      );
}

enum AlarmDetailsScreenNavigationState {
  label,
  repeat,
  none,
}
