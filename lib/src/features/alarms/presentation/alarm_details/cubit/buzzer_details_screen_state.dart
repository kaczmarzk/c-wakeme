part of 'buzzer_details_screen_cubit.dart';

final class AlarmDetailsScreenState extends Equatable {
  const AlarmDetailsScreenState._({
    required this.time,
    required this.repeat,
    required this.name,
  });

  factory AlarmDetailsScreenState.initial(CTime time) {
    return AlarmDetailsScreenState._(
      time: time,
      repeat: const {},
      name: '',
    );
  }

  final CTime time;
  final Set<Weekday> repeat;
  final String name;

  @override
  List<Object> get props => [time, repeat, name];
}
