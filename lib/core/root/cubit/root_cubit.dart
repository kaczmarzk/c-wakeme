import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'root_state.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState());
}
