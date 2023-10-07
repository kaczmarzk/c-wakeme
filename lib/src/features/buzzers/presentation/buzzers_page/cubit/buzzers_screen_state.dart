part of 'buzzers_screen_cubit.dart';

@freezed
class BuzzersScreenState with _$BuzzersScreenState {
  const factory BuzzersScreenState({
    required List<Buzzer> buzzers,
  }) = _BuzzersScreenState;

  factory BuzzersScreenState.initial() => const BuzzersScreenState(
        buzzers: [],
      );
}
