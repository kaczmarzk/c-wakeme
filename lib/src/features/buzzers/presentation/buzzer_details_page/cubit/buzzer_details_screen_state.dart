part of 'buzzer_details_screen_cubit.dart';

@freezed
class BuzzerDetailsScreenState with _$BuzzerDetailsScreenState {
  const factory BuzzerDetailsScreenState({
    required BuzzerDate date,
  }) = _BuzzerDetailsScreenState;

  factory BuzzerDetailsScreenState.initial([Buzzer? entity]) => BuzzerDetailsScreenState(
    date: entity?.date ?? BuzzerDate.now(),
  );
}
