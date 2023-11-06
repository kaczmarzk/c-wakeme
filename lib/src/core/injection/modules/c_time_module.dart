import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/utils/c_time.dart';

@module
abstract class CTimeModule {
  @singleton
  CTime get instance => CTime();
}
