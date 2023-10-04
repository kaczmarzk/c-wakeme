import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/buzzers/data/dto/buzzer_date/buzzer_date_dto.dart';

part 'buzzer_date.freezed.dart';

@freezed
class BuzzerDate with _$BuzzerDate {
  const BuzzerDate._();

  const factory BuzzerDate({
    required Weekday weekday,
    required int hour,
    required int minute,
  }) = _BuzzerDate;

  factory BuzzerDate.fromDto(BuzzerDateDto dto) => BuzzerDate(
        weekday: dto.weekday,
        hour: dto.hour,
        minute: dto.minute,
      );

  BuzzerDateDto toDto() => BuzzerDateDto(
        weekday: weekday,
        hour: hour,
        minute: minute,
      );
}
