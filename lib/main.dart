import 'package:flutter/material.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/core/routing/app_router.dart';
import 'package:wakeme/core/service/db/hive/hive_client.dart';
import 'package:wakeme/core/utils/logging/logger.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_utils.dart';

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
      theme: CThemeUtils.dark,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().config(),
    );
  }
}
