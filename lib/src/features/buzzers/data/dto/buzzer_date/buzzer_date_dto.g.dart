// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buzzer_date_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuzzerDateDto _$BuzzerDateDtoFromJson(Map<String, dynamic> json) =>
    BuzzerDateDto(
      weekday: $enumDecode(_$WeekdayEnumMap, json['weekday']),
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );

Map<String, dynamic> _$BuzzerDateDtoToJson(BuzzerDateDto instance) =>
    <String, dynamic>{
      'weekday': _$WeekdayEnumMap[instance.weekday]!,
      'hour': instance.hour,
      'minute': instance.minute,
    };

const _$WeekdayEnumMap = {
  Weekday.monday: 'monday',
  Weekday.tuesday: 'tuesday',
  Weekday.wednesday: 'wednesday',
  Weekday.thursday: 'thursday',
  Weekday.friday: 'friday',
  Weekday.saturday: 'saturday',
  Weekday.sunday: 'sunday',
};
