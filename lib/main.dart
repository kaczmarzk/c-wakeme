import 'package:flutter/material.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/core/logging/logger.dart';
import 'package:wakeme/core/root/root_widget.dart';
import 'package:wakeme/core/service/db/hive/hive_client.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.init();
  configureDependencies();
  await asyncConfiguration().catchError(Logger.configuration);
  runApp(const RootWidget());
}

Future<void> asyncConfiguration() async {
  await HiveClient.init();
}
