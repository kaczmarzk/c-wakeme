part of 'buzzers_screen_cubit.dart';

@freezed
class BuzzersScreenState with _$BuzzersScreenState {
  const factory BuzzersScreenState({
    required List<Buzzer> buzzers,
    required BuzzersScreenNavigationState navigation,
  }) = _BuzzersScreenState;

  factory BuzzersScreenState.initial() => const BuzzersScreenState(
        buzzers: [],
        navigation: BuzzersScreenNavigationState.none,
      );
}

enum BuzzersScreenNavigationState {
  details,
  settings,
  none,
}
