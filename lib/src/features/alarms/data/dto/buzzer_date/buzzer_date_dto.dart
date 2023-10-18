import 'package:json_annotation/json_annotation.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';

part 'buzzer_date_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class BuzzerDateDto {
  BuzzerDateDto({
    required this.repeat,
    required this.hour,
    required this.minute,
  });

  factory BuzzerDateDto.fromJson(Map<String, dynamic> json) => _$BuzzerDateDtoFromJson(json);

  final Set<Weekday> repeat;
  final int hour;
  final int minute;

  Map<String, dynamic> toJson() => _$BuzzerDateDtoToJson(this);
}
