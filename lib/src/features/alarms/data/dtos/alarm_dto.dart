import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/features/alarms/data/dtos/alarm_time_dto.dart';

part 'alarm_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class AlarmDto {
  AlarmDto({
    required this.uuid,
    required this.time,
    this.name,
    this.repeated,
  });

  factory AlarmDto.fromJson(Map<String, dynamic> json) => _$AlarmDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AlarmDtoToJson(this);

  final String uuid;
  final AlarmTimeDto time;
  final String? name;
  final Set<Weekday>? repeated;
}
