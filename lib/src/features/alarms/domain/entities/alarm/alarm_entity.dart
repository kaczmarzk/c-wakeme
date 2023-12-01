import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_time/alarm_time_entity.dart';

part 'alarm_entity.freezed.dart';

@freezed
class AlarmEntity with _$AlarmEntity {
  const factory AlarmEntity({
    required AlarmTimeEntity time,
    required String? name,
    required Set<Weekday> repeated,
  }) = _AlarmEntity;
}
