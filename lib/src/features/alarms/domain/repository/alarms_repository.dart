import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/utils/functional/failure/failure.dart';
import 'package:wakeme/src/features/alarms/data/source/local/alarms_local_source.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';

abstract interface class IAlarmsRepository {
  Either<Failure, Buzzer> add({required String label, required BuzzerDate date});

  Either<Failure, Buzzer> replace(Buzzer entity);

  Either<Failure, Buzzer> get(String uid);

  List<Buzzer> getAll();

  void remove(String uid);
}

@injectable
class AlarmsRepository with UiLoggy implements IAlarmsRepository {
  AlarmsRepository(this.source);

  final AlarmsLocalSource source;

  @override
  Either<Failure, Buzzer> add({required String label, required BuzzerDate date}) {
    final buzzer = Buzzer.create(label: label, date: date);
    return source.add(buzzer.toDto()).fold(Either.left, (success) => Either.right(buzzer));
  }

  @override
  Either<Failure, Buzzer> replace(Buzzer entity) {
    final dto = entity.toDto();
    return source.replace(dto).fold(Either.left, (success) => Either.right(entity));
  }

  @override
  Either<Failure, Buzzer> get(String uid) {
    final option = source.get(uid);
    return option.fold(
      () => Either.left(const Failure.notFound()),
      (dto) => Either.right(Buzzer.fromDto(dto)),
    );
  }

  @override
  List<Buzzer> getAll() {
    final dtos = source.getAll();
    return dtos.map(Buzzer.fromDto).toList();
  }

  @override
  void remove(String uid) {
    source.remove(uid);
  }
}
