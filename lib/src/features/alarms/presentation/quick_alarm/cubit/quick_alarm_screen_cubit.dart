import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quick_alarm_screen_state.dart';
part 'quick_alarm_screen_cubit.freezed.dart';

@injectable
class QuickAlarmScreenCubit extends Cubit<QuickAlarmScreenState> {
  QuickAlarmScreenCubit() : super(const QuickAlarmScreenState());
}
