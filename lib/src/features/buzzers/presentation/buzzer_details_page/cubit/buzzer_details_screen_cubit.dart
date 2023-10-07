import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';

part 'buzzer_details_screen_state.dart';
part 'buzzer_details_screen_cubit.freezed.dart';

@injectable
class BuzzerDetailsScreenCubit extends Cubit<BuzzerDetailsScreenState> {
  BuzzerDetailsScreenCubit() : super(BuzzerDetailsScreenState.initial());

  void handleDateChanged(BuzzerDate date) {}
}
