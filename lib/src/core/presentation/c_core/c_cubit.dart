import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggy/loggy.dart';

abstract interface class ICCubit<State> extends Cubit<State> {
  ICCubit(State initialState) : super(initialState);

  void init();

  void cachedEmit(State state);
}

class CCubit<State> extends Cubit<State> with UiLoggy implements ICCubit<State> {
  CCubit(State initialState) : super(initialState);

  @override
  void init() {}

  @override
  void emit(State state, [bool isCached = false]) {
    if (!isCached) loggy.debug('state: $state');
    super.emit(state);
  }

  @override
  void cachedEmit(State state) {
    final cachedState = this.state;
    emit(state);
    emit(cachedState, true);
  }
}
