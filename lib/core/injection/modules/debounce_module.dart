import 'package:injectable/injectable.dart';
import 'package:wakeme/core/utils/c_debounce.dart';

@module
abstract class DebounceModule {
  @injectable
  CDebounce get instance => CDebounce();
}
