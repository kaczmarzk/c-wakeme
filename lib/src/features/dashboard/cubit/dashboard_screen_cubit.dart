import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/presentation/c_core/c_cubit.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/repository/buzzers_repository.dart';

part 'dashboard_screen_state.dart';
part 'dashboard_screen_cubit.freezed.dart';

@injectable
class DashboardScreenCubit extends CCubit<DashboardScreenState> {
  DashboardScreenCubit(this._repository) : super(DashboardScreenState.initial());
  final BuzzersRepository _repository;

  void fetchBuzzers() {
    final buzzers = _repository.getAll();
    emit(state.copyWith(buzzers: buzzers));
  }

  void onAddPressed() {
    final details = state.copyWith(navigation: DashboardScreenNavigationState.details);
    cachedEmit(details);
  }

  void onSettingsPressed(){
    final details = state.copyWith(navigation: DashboardScreenNavigationState.settings);
    cachedEmit(details);
  }
}
