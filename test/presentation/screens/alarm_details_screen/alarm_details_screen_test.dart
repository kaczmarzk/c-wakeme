import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/alarm_details_screen.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart';

import '../../ct_presentation_utils/ct_golden_utils.dart';

class MockAlarmDetailsScreenCubit extends MockCubit<AlarmDetailsScreenState> implements AlarmDetailsScreenCubit {}

class MockAlarmDetailsScreenState extends Fake implements AlarmDetailsScreenState {}

void main() {
  late AlarmDetailsScreenCubit cubit;


  setUpAll(() async {
    await CTGoldenUtils.initializeGolden();
    registerFallbackValue(MockAlarmDetailsScreenState());
    cubit = MockAlarmDetailsScreenCubit();
  });

  testGoldens(
    'render_default',
    (tester) async {
      const date = BuzzerDate(hour: 21, minute: 37, repeat: {});
      final state = AlarmDetailsScreenState.initial().copyWith(name: 'Nice alarm', weekdays: Weekday.weekdays, date: date);
      when(() => cubit.state).thenAnswer((_) => state);

      final builder = CTGoldenUtils.buildDevice(
        body: AlarmDetailsScreen.body,
        create: (_) => cubit,
      );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'alarm_details_screen_default');
    },
    tags: CTGoldenUtils.tags,
  );

  testGoldens(
    'render_with_repeat',
    (tester) async {
      const repeat = {Weekday.thursday, Weekday.friday};
      const date = BuzzerDate(hour: 21, minute: 37, repeat: repeat);
      final state = AlarmDetailsScreenState.initial().copyWith(name: 'Repeat alarm', weekdays: repeat, date: date);
      when(() => cubit.state).thenAnswer((_) => state);

      final builder = CTGoldenUtils.buildDevice(
        body: AlarmDetailsScreen.body,
        create: (_) => cubit,
      );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'alarm_details_screen_with_repeat');
    },
    tags: CTGoldenUtils.tags,
  );
}
