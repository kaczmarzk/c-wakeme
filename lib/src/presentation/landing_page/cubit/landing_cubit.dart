import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/features/buzzers/domain/repository/buzzers_repository.dart';

part 'landing_state.dart';

part 'landing_cubit.freezed.dart';

@injectable
class LandingCubit extends Cubit<LandingState> {
  LandingCubit(this._repository) : super(LandingState.initial());
  final BuzzersRepository _repository;

  void fetchBuzzers() {
    final buzzers = _repository.getAll();
    emit(state.copyWith(buzzers: buzzers));
  }

  void onAddBuzzer() {
    const date = BuzzerDate(weekday: Weekday.friday, hour: 10, minute: 10);
    _repository.add(label: 'random+${DateTime.now()}', date: date);
    fetchBuzzers();
  }

  void onRemoveBuzzer(Buzzer buzzer) {
    _repository.remove(buzzer.uid);
    fetchBuzzers();
  }
}
