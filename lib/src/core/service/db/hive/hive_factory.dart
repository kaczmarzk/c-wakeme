import 'package:hive/hive.dart';

abstract final class HiveFactory {
  /// In situation where you want to add new box
  /// just add here a new const name with required [_namePrefix],
  /// and add new box factory in [registerBoxes] array below
  static const _namePrefix = 'wake_me_db';

  static const settingsBox = '$_namePrefix.settings';
  static const baseBox = '$_namePrefix.base';
  static const buzzersBox = '$_namePrefix.buzzers';

  static Future<void> registerBoxes() => Future.wait<Box>([
        Hive.openBox(baseBox),
        Hive.openBox(settingsBox),
        Hive.openBox(buzzersBox),
      ]).then((v) => instance = v);

  static List<Box> instance = [];
}

