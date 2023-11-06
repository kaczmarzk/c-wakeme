import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/utils/c_time.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/alarms/data/dto/buzzer_date/buzzer_date_dto.dart';

part 'buzzer_date.freezed.dart';

@freezed
class BuzzerDate with _$BuzzerDate {
  const factory BuzzerDate({
    required Set<Weekday> repeat,
    required int hour,
    required int minute,
  }) = _BuzzerDate;

  const BuzzerDate._();

  factory BuzzerDate.fromDto(BuzzerDateDto dto) => BuzzerDate(
        repeat: dto.repeat,
        hour: dto.hour,
        minute: dto.minute,
      );

  factory BuzzerDate.now() {
    final time = inject<CTime>().now();
    return BuzzerDate(
      repeat: {},
      hour: time.hour,
      minute: time.minute,
    );
  }

  BuzzerDateDto toDto() => BuzzerDateDto(
        repeat: repeat,
        hour: hour,
        minute: minute,
      );

  DateTime toDt() => DateTime.now().copyWith(
        hour: hour,
        minute: minute,
      );
}
