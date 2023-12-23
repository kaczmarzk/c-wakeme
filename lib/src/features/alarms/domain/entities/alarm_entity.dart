import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/features/alarms/data/dtos/alarm_dto.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_time_entity.dart';

part 'alarm_entity.freezed.dart';

@freezed
class AlarmEntity with _$AlarmEntity {
  const factory AlarmEntity({
    required String uuid,
    required AlarmTimeEntity time,
    Set<Weekday>? repeated,
    String? name,
  }) = _AlarmEntity;

  factory AlarmEntity.fromDto(AlarmDto dto) => AlarmEntity(
        uuid: dto.uuid,
        name: dto.name,
        repeated: dto.repeated,
        time: AlarmTimeEntity.fromDto(dto.time),
      );

  const AlarmEntity._();

  AlarmDto toDto() => AlarmDto(
        uuid: uuid,
        name: name,
        repeated: repeated,
        time: time.toDto(),
      );
}
