import 'package:injectable/injectable.dart';
import 'package:wakeme/core/utils/c_clock.dart';

@module
abstract class ClockModule {
  @injectable
  CClock get instance => CClock();
}
