// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buzzer_date_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuzzerDateDto _$BuzzerDateDtoFromJson(Map<String, dynamic> json) =>
    BuzzerDateDto(
      repeat: (json['repeat'] as List<dynamic>)
          .map((e) => $enumDecode(_$WeekdayEnumMap, e))
          .toSet(),
      hour: json['hour'] as int,
      minute: json['minute'] as int,
    );

Map<String, dynamic> _$BuzzerDateDtoToJson(BuzzerDateDto instance) =>
    <String, dynamic>{
      'repeat': instance.repeat.map((e) => _$WeekdayEnumMap[e]!).toList(),
      'hour': instance.hour,
      'minute': instance.minute,
    };

const _$WeekdayEnumMap = {
  Weekday.sunday: 'sunday',
  Weekday.monday: 'monday',
  Weekday.tuesday: 'tuesday',
  Weekday.wednesday: 'wednesday',
  Weekday.thursday: 'thursday',
  Weekday.friday: 'friday',
  Weekday.saturday: 'saturday',
};
