import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/service/debounce/easy_debouncer.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';

part 'buzzer_details_screen_state.dart';

part 'buzzer_details_screen_cubit.freezed.dart';

@injectable
class BuzzerDetailsScreenCubit extends Cubit<BuzzerDetailsScreenState> with UiLoggy {
  BuzzerDetailsScreenCubit(this.debouncer) : super(BuzzerDetailsScreenState.initial());
  final EasyDebouncer debouncer;

  void handleDateChanged(BuzzerDate date) {
    debouncer.debounce(
      execute: () {
        loggy.debug('onDateChanged: ${date.weekday} - ${date.hour}:${date.minute}');
        emit(state.copyWith(date: date));
      },
    );
  }

  @override
  Future<void> close() {
    debouncer.cancel();
    return super.close();
  }
}
