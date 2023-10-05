import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/routing/app_router.dart';
import 'package:wakeme/src/core/service/db/hive/hive_client.dart';
import 'package:wakeme/src/core/utils/logs/logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.init();
  configureDependencies();
  await asyncConfiguration().catchError(Logger.configuration);
  runApp(const MyApp());
}

Future<void> asyncConfiguration() async {
  await HiveClient.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: inject<AppRouter>().config(),
    );
  }
}
