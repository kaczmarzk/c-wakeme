part of 'buzzer_details_screen_cubit.dart';

@freezed
class AlarmDetailsScreenState with _$AlarmDetailsScreenState {
  const factory AlarmDetailsScreenState({
    required BuzzerDate date,
  }) = _AlarmDetailsScreenState;

  factory AlarmDetailsScreenState.initial([Buzzer? entity]) => AlarmDetailsScreenState(
    date: entity?.date ?? BuzzerDate.now(),
  );
}
