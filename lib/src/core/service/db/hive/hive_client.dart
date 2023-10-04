import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wakeme/src/core/service/db/hive/hive_factory.dart';

abstract interface class IHiveClient {
  T? getWithKey<T>({required String box, required String key});

  void putAtKey<T>({required String box, required String key, required T value});

  void deleteAtKey({required String box, required String key});

  List<T> getAll<T>({required String box});
}

@lazySingleton
class HiveClient implements IHiveClient {
  HiveClient();

  static Future<void> init() async {
    await getApplicationDocumentsDirectory().then((dir) => Hive.init(dir.path));
    await HiveFactory.registerBoxes();
  }

  @override
  T? getWithKey<T>({required String box, required String key}) {
    return _getBox(box).get(key.toLowerCase());
  }

  @override
  void putAtKey<T>({required String box, required String key, required T value}) {
    _getBox(box).put(key.toLowerCase(), value);
  }

  @override
  List<T> getAll<T>({required String box}) {
    return _getBox(box).toMap().values.cast<T>().toList();
  }

  @override
  void deleteAtKey({required String box, required String key}) {
    _getBox(box).delete(key);
  }

  Box<T> _getBox<T>(String name) {
    final boxes = HiveFactory.instance;
    return boxes.firstWhere((e) => e is T && name == e.name) as Box<T>;
  }
}
