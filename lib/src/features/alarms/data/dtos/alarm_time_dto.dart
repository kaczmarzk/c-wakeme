import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm_time_dto.g.dart';

@JsonSerializable()
class AlarmTimeDto {
  AlarmTimeDto({
    required this.hour,
    required this.minute,
  });

  factory AlarmTimeDto.fromJson(Map<String, dynamic> json) => _$AlarmTimeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AlarmTimeDtoToJson(this);

  final int hour;
  final int minute;
}
