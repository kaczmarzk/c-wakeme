import 'package:injectable/injectable.dart';
import 'package:time_listener/time_listener.dart';

@module
abstract class TimeListenerModule {
  @injectable
  TimeListener get instance => TimeListener();
}
