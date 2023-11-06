import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakeme/src/features/dashboard/cubit/dashboard_screen_cubit.dart';
import 'package:wakeme/src/features/dashboard/dashboard_screen.dart';

import '../../ct_presentation_utils/ct_golden_utils.dart';

class MockDashboardScreenCubit extends MockCubit<DashboardScreenState> implements DashboardScreenCubit {}

class MockDashboardScreenState extends Fake implements DashboardScreenState {}

void main() {
  late DashboardScreenCubit cubit;

  setUpAll(() async {
    await CTGoldenUtils.initializeGolden();
    registerFallbackValue(MockDashboardScreenState());
    cubit = MockDashboardScreenCubit();
  });

  testGoldens(
    'render_default',
    (tester) async {
      when(() => cubit.state).thenAnswer((_) => DashboardScreenState.initial());

      final builder = CTGoldenUtils.buildDevice(
        body: DashboardScreen.body,
        create: (_) => cubit,
      );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'dashboard_screen_default');
    },
    tags: CTGoldenUtils.tags,
  );
}
