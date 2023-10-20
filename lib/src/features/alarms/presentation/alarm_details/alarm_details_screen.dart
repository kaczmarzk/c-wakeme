import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/i18n/translations.g.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/c_app_bar.dart';
import 'package:wakeme/src/core/presentation/widgets/c_dialog.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/presentation/widgets/c_timer_picker.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_option_box.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/widgets/alarm_details_weekday_picker.dart';

@RoutePage()
class AlarmDetailsScreen extends StatelessWidget {
  const AlarmDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<AlarmDetailsScreenCubit>()..init(),
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
          const CAppBar(label: 'Edit Alarm'),
          const SizedBox(height: 10.0),
          CContentBox(
            height: 140.0,
            child: CTimePicker(
              initial: context.read<AlarmDetailsScreenCubit>().state.date,
              onDateChanged: context.read<AlarmDetailsScreenCubit>().handleDateChanged,
            ),
          ),
          const SizedBox(height: 20.0),
          BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
            buildWhen: (prev, curr) => prev.weekdays != curr.weekdays,
            builder: (_, state) => AlarmDetailsWeekdaysWidget(values: state.weekdays),
          ),
          const SizedBox(height: 20.0),
          CContentBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CContentOptionBox(
                  title: 'Label',
                  subtitle: 'Śliczna nazwa budzika',
                  onPressed: () => CDialog.show(
                    context,
                    label: 'Set label',
                    child: Container(color: Colors.red, width: 100, height: 100,),
                  ),
                ),
                CContentOptionBox(
                  title: 'Repeat',
                  subtitle: 'Never',
                  onPressed: () {},
                ),
                CContentOptionBox(
                  title: 'Sound',
                  subtitle: 'Orkney',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Spacer(),
          CBottomFloatingButton.invert(
            label: l18n.save,
            onPressed: context.read<AlarmDetailsScreenCubit>().handleSave,
            action: CBottomFloatingButtonAction(
              icon: CupertinoIcons.clear,
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      );
}
