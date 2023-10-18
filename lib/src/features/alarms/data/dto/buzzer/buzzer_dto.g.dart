// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buzzer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuzzerDto _$BuzzerDtoFromJson(Map<String, dynamic> json) => BuzzerDto(
      uid: json['uid'] as String,
      label: json['label'] as String,
      date: BuzzerDateDto.fromJson(json['date'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$BuzzerDtoToJson(BuzzerDto instance) => <String, dynamic>{
      'uid': instance.uid,
      'label': instance.label,
      'date': instance.date.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
