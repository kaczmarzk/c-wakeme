import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakeme/src/features/alarms/data/dto/buzzer/buzzer_dto.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:uuid/uuid.dart';

part 'buzzer.freezed.dart';

@freezed
class Buzzer with _$Buzzer {
  const factory Buzzer({
    required String uid,
    required String label,
    required BuzzerDate date,
    required DateTime createdAt,
  }) = _Buzzer;

  const Buzzer._();

  factory Buzzer.create({required String label, required BuzzerDate date}) => Buzzer(
        uid: const Uuid().v1(),
        label: label,
        date: date,
        createdAt: DateTime.now(),
      );

  factory Buzzer.fromDto(BuzzerDto dto) => Buzzer(
        uid: dto.uid,
        label: dto.label,
        date: BuzzerDate.fromDto(dto.date),
        createdAt: dto.createdAt,
      );

  BuzzerDto toDto() => BuzzerDto(
        uid: uid,
        label: label,
        date: date.toDto(),
        createdAt: createdAt,
      );
}
