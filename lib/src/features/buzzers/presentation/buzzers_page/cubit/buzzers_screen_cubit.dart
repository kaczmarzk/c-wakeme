import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/presentation/c_core/c_cubit.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/repository/buzzers_repository.dart';

part 'buzzers_screen_state.dart';

part 'buzzers_screen_cubit.freezed.dart';

@injectable
class BuzzersScreenCubit extends CCubit<BuzzersScreenState> {
  BuzzersScreenCubit(this._repository) : super(BuzzersScreenState.initial());
  final BuzzersRepository _repository;

  void fetchBuzzers() {
    final buzzers = _repository.getAll();
    emit(state.copyWith(buzzers: buzzers));
  }

  void onAddClicked() {
    final details = state.copyWith(navigation: BuzzersScreenNavigationState.details);
    cachedEmit(details);
  }

  void onBellClicked(){
    final details = state.copyWith(navigation: BuzzersScreenNavigationState.settings);
    cachedEmit(details);
  }
}
