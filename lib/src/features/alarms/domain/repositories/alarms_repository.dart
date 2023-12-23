import 'package:injectable/injectable.dart';
import 'package:wakeme/src/features/alarms/data/sources/alarms_local_source.dart';
import 'package:wakeme/src/features/alarms/domain/entities/alarm_entity.dart';

abstract interface class IAlarmsRepository {
  void add(AlarmEntity value);

  List<AlarmEntity> getAll();

  void remove(String uuid);
}

@injectable
class AlarmsRepository implements IAlarmsRepository {
  AlarmsRepository(this._source);

  final AlarmsLocalSource _source;

  @override
  void add(AlarmEntity value) {
    _source.add(value.toDto());
  }

  @override
  List<AlarmEntity> getAll() {
    final dtos = _source.getAll();
    return dtos.map(AlarmEntity.fromDto).toList();
  }

  @override
  void remove(String uuid) {
    _source.remove(uuid);
  }

}
