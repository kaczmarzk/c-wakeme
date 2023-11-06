import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:wakeme/src/core/presentation/theme/c_theme_utils.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';

import 'c_font_loader.dart';

abstract final class CTGoldenUtils {
  static const tags = ['golden'];

  static Future<void> initializeFonts() async {
    await CTFontLoader.loadGilroy();
    await CTFontLoader.loadAlbert();
    await CTFontLoader.loadDefaults();
  }

  static DeviceBuilder buildDevice<T extends Cubit>({
    required Widget body,
    T Function(BuildContext)? create,
  }) {
    final builder = DeviceBuilder()..overrideDevicesForAllScenarios(devices: [Device.iphone11]);
    final scenario = MaterialApp(theme: CThemeUtils.dark, debugShowCheckedModeBanner: false, home: CScaffold(body: body));
    builder.addScenario(
      widget: create == null
          ? scenario
          : BlocProvider<T>(
              create: create,
              child: scenario,
            ),
    );

    return builder;
  }
}
