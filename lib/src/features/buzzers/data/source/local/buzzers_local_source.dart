import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wakeme/src/core/service/db/hive/hive_client.dart';
import 'package:wakeme/src/core/service/db/hive/hive_factory.dart';
import 'package:wakeme/src/core/utils/functional/failure/failure.dart';
import 'package:wakeme/src/core/utils/functional/success/success.dart';
import 'package:wakeme/src/features/buzzers/data/dto/buzzer/buzzer_dto.dart';

abstract interface class IBuzzersLocalSource {
  Either<Failure, Success> add(BuzzerDto dto);

  Either<Failure, Success> replace(BuzzerDto dto);

  void remove(String uid);

  Option<BuzzerDto> get(String uid);

  List<BuzzerDto> getAll();
}

@injectable
class BuzzersLocalSource implements IBuzzersLocalSource {
  BuzzersLocalSource(this.database);

  final HiveClient database;

  static const _box = HiveFactory.buzzersBox;

  @override
  Either<Failure, Success> add(BuzzerDto dto) {
    // checking that value already exist
    final value = database.getWithKey(box: _box, key: dto.uid);
    if (value != null) Either.left(const Failure.conflict());

    database.putAtKey(box: _box, key: dto.uid, value: jsonEncode(dto.toJson()));
    return Either.right(const Success());
  }

  @override
  Either<Failure, Success> replace(BuzzerDto dto) {
    // checking that value exist
    final value = database.getWithKey(box: _box, key: dto.uid);
    if (value == null) Either.left(const Failure.notFound());

    database.putAtKey(box: _box, key: dto.uid, value: jsonEncode(dto.toJson()));
    return Either.right(const Success());
  }

  @override
  void remove(String uid) {
    database.deleteAtKey(box: _box, key: uid);
  }

  @override
  Option<BuzzerDto> get(String uid) {
    final value = database.getWithKey(box: _box, key: uid);
    if (value == null) return const Option.none();
    final dto = BuzzerDto.fromJson(jsonDecode(value));
    return Option.of(dto);
  }

  @override
  List<BuzzerDto> getAll() {
    final result = database.getAll(box: _box);
    return result.map((e) => BuzzerDto.fromJson(jsonDecode(e))).toList();
  }
}
