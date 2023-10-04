import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:wakeme/src/core/utils/functional/failure/failure.dart';
import 'package:wakeme/src/features/buzzers/data/source/local/buzzers_local_source.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer/buzzer.dart';
import 'package:wakeme/src/features/buzzers/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IBuzzersRepository {
  Either<Failure, Buzzer> add({required String label, required BuzzerDate date});

  Either<Failure, Buzzer> replace(Buzzer entity);

  Either<Failure, Buzzer> get(String uid);

  List<Buzzer> getAll();

  void remove(String uid);
}

@injectable
class BuzzersRepository with UiLoggy implements IBuzzersRepository {
  BuzzersRepository(this.source);

  final BuzzersLocalSource source;

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
    return dtos.map((dto) => Buzzer.fromDto(dto)).toList();
  }

  @override
  void remove(String uid) {
    source.remove(uid);
  }
}
