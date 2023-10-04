part of 'landing_cubit.dart';

@freezed
class LandingState with _$LandingState {
  const factory LandingState({
    required List<Buzzer> buzzers,
  }) = _LandingState;

  factory LandingState.initial() => const LandingState(
        buzzers: [],
      );
}
