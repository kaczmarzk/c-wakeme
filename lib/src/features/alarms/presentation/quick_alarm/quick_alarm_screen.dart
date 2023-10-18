import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/i18n/translations.g.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/c_app_bar.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/core/presentation/widgets/c_timer_picker.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_option_box.dart';
import 'package:wakeme/src/features/alarms/domain/entity/buzzer_date/buzzer_date.dart';
import 'package:wakeme/src/features/alarms/presentation/quick_alarm/cubit/quick_alarm_screen_cubit.dart';

@RoutePage()
class QuickAlarmScreen extends StatelessWidget {
  const QuickAlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<QuickAlarmScreenCubit>(),
      child: const CScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const CAppBar(label: 'Quick Alarm'),
          const SizedBox(height: 10.0),
          CContentBox(
            height: 140.0,
            child: CTimePicker(
              initial: BuzzerDate.now(),
              onDateChanged: (_) {},
            ),
          ),
          const SizedBox(height: 20.0),
          const SizedBox(height: 20.0),
          CContentBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CContentOptionBox(
                  title: 'Label',
                  subtitle: 'Śliczna nazwa budzika',
                  onPressed: () => print('pressed'),
                ),
                CContentOptionBox(
                  title: 'Sound',
                  subtitle: 'Orkney',
                  onPressed: () => print('pressed'),
                ),
              ],
            ),
          ),
          const Spacer(),
          CBottomFloatingButton.invert(
            label: l18n.save,
            onPressed: () {},
            action: CBottomFloatingButtonAction(
              icon: CupertinoIcons.clear,
              onPressed: () => print('action pressed'),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      );
}
