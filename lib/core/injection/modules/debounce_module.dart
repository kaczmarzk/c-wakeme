import 'package:injectable/injectable.dart';
import 'package:wakeme/core/service/debounce/easy_debouncer.dart';

@module
abstract class DebounceModule {
  @injectable
  EasyDebouncer get instance => EasyDebouncer.create();
}
