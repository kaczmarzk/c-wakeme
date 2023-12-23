import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/core/utils/c_clock.dart';
import 'package:wakeme/src/features/alarms/data/dtos/alarm_time_dto.dart';

part 'alarm_time_entity.freezed.dart';

@freezed
class AlarmTimeEntity with _$AlarmTimeEntity {
  const factory AlarmTimeEntity({
    required int hour,
    required int minute,
  }) = _AlarmTimeEntity;

  const AlarmTimeEntity._();

  factory AlarmTimeEntity.fromClock(CClock clock) => AlarmTimeEntity(
        hour: clock.time.hour,
        minute: clock.time.minute,
      );

  factory AlarmTimeEntity.fromDto(AlarmTimeDto dto) => AlarmTimeEntity(
        hour: dto.hour,
        minute: dto.minute,
      );

  AlarmTimeDto toDto() => AlarmTimeDto(
        hour: hour,
        minute: minute,
      );
}
