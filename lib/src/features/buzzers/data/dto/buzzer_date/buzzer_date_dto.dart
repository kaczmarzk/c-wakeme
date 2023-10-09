import 'package:json_annotation/json_annotation.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';

part 'buzzer_date_dto.g.dart';

@JsonSerializable()
class BuzzerDateDto {
  BuzzerDateDto({
    required this.weekday,
    required this.hour,
    required this.minute,
  });

  factory BuzzerDateDto.fromJson(Map<String, dynamic> json) => _$BuzzerDateDtoFromJson(json);

  final Weekday weekday;
  final int hour;
  final int minute;


  Map<String, dynamic> toJson() => _$BuzzerDateDtoToJson(this);
}
