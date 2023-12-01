import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/core/utils/c_clock.dart';

part 'alarm_time_entity.freezed.dart';

@freezed
class AlarmTimeEntity with _$AlarmTimeEntity {
  const AlarmTimeEntity._();

  const factory AlarmTimeEntity({
    required int hour,
    required int minute,
  }) = _AlarmTimeEntity;

  factory AlarmTimeEntity.fromClock(CClock clock) => AlarmTimeEntity(
        hour: clock.time.hour,
        minute: clock.time.minute,
      );
}
