import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wakeme/core/service/db/hive/hive_client.dart';
import 'package:wakeme/core/service/db/hive/hive_factory.dart';
import 'package:wakeme/src/features/alarms/data/dtos/alarm_dto.dart';

abstract interface class IAlarmsLocalSource {
  void add(AlarmDto value);

  List<AlarmDto> getAll();

  void remove(String uuid);
}

@injectable
class AlarmsLocalSource implements IAlarmsLocalSource {
  AlarmsLocalSource(this._database);

  final HiveClient _database;

  @override
  void add(AlarmDto value) {
    final key = value.uuid;
    final dbo = jsonEncode(value.toJson());
    _database.putAtKey(box: HiveFactory.alarmsBox, key: key, value: dbo);
  }

  @override
  List<AlarmDto> getAll() {
    final dbo = _database.getAll(box: HiveFactory.alarmsBox);
    return List<AlarmDto>.from(dbo.map((e) => AlarmDto.fromJson(jsonDecode(e))));
  }

  @override
  void remove(String uuid) {
    _database.deleteAtKey(box: HiveFactory.alarmsBox, key: uuid);
  }
}
