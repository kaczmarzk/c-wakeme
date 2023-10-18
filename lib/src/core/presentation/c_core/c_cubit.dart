import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggy/loggy.dart';

class CCubit<State> extends Cubit<State> with UiLoggy {
  CCubit(State initialState) : super(initialState);

  void cachedEmit(State state) {
    final cachedState = this.state;
    emit(state);
    emit(cachedState);
  }

  @override
  void emit(State state) {
    loggy.debug('state: $state');
    super.emit(state);
  }
}
