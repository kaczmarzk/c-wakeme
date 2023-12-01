import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_screen_state.dart';

@injectable
class DashboardScreenCubit extends Cubit<DashboardScreenState> {
  DashboardScreenCubit() : super(DashboardScreenState());
}
