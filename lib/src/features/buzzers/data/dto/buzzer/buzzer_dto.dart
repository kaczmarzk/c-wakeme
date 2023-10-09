import 'package:json_annotation/json_annotation.dart';
import 'package:wakeme/src/features/buzzers/data/dto/buzzer_date/buzzer_date_dto.dart';

part 'buzzer_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class BuzzerDto {
  BuzzerDto({
    required this.uid,
    required this.label,
    required this.date,
    required this.createdAt,
  });

  factory BuzzerDto.fromJson(Map<String, dynamic> json) => _$BuzzerDtoFromJson(json);

  final String uid;
  final String label;
  final BuzzerDateDto date;
  final DateTime createdAt;

  Map<String, dynamic> toJson() => _$BuzzerDtoToJson(this);
}
