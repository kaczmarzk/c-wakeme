// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlarmDto _$AlarmDtoFromJson(Map<String, dynamic> json) => AlarmDto(
      uuid: json['uuid'] as String,
      time: AlarmTimeDto.fromJson(json['time'] as Map<String, dynamic>),
      name: json['name'] as String?,
      repeated: (json['repeated'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$WeekdayEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$AlarmDtoToJson(AlarmDto instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'time': instance.time.toJson(),
      'name': instance.name,
      'repeated': instance.repeated?.map((e) => _$WeekdayEnumMap[e]!).toList(),
    };

const _$WeekdayEnumMap = {
  Weekday.monday: 0,
  Weekday.tuesday: 1,
  Weekday.wednesday: 2,
  Weekday.thursday: 3,
  Weekday.friday: 4,
  Weekday.saturday: 5,
  Weekday.sunday: 6,
};
