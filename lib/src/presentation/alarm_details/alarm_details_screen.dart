import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wakeme/core/injection/injection.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/common/extensions/build_context_ext.dart';
import 'package:wakeme/src/common/extensions/set_ext.dart';
import 'package:wakeme/src/common/extensions/string_ext.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/common/presentation/widgets/c_app_bar.dart';
import 'package:wakeme/src/common/presentation/widgets/c_dialog.dart';
import 'package:wakeme/src/common/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/common/presentation/widgets/c_timer_picker.dart';
import 'package:wakeme/src/common/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/common/presentation/widgets/content/c_content_option_box.dart';
import 'package:wakeme/src/presentation/alarm_details/cubit/alarm_details_screen_cubit.dart';
import 'package:wakeme/src/presentation/alarm_details/widgets/alarm_details_label_popup.dart';
import 'package:wakeme/src/presentation/alarm_details/widgets/alarm_details_repeat_popup.dart';
import 'package:wakeme/src/presentation/alarm_details/widgets/alarm_details_weekday_picker.dart';

@RoutePage()
class AlarmDetailsScreen extends StatelessWidget {
  const AlarmDetailsScreen({super.key});

  @visibleForTesting
  static Widget get body => const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<AlarmDetailsScreenCubit>(),
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
            child: Builder(
              builder: (_) {
                final alarmTime = context.read<AlarmDetailsScreenCubit>().state.alarm.time;
                return CTimePicker(
                  initial: context.clock.time.copyWith(hour: alarmTime.hour, minute: alarmTime.minute),
                  onDateChanged: context.read<AlarmDetailsScreenCubit>().onDateChanged,
                );
              },
            ),
          ),
          const SizedBox(height: 20.0),
          BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
            buildWhen: (prev, curr) => prev.alarm != curr.alarm || !prev.weekdays.equals(curr.weekdays),
            builder: (_, state) => AlarmDetailsWeekdaysWidget(
              alarm: state.alarm,
              weekdays: state.weekdays,
            ),
          ),
          const SizedBox(height: 20.0),
          const CContentBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _LabelOptionBox(),
                _RepeatOptionBox(),
                _SoundOptionBox(),
              ],
            ),
          ),
          const Spacer(),
          CBottomFloatingButton.invert(
            label: 'Save',
            onPressed: context.read<AlarmDetailsScreenCubit>().handleSave,
            action: CBottomFloatingButtonAction(
              icon: CupertinoIcons.clear,
              onPressed: context.router.pop,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      );
}

class _LabelOptionBox extends StatelessWidget {
  const _LabelOptionBox();

  @override
  Widget build(BuildContext context) => BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
        buildWhen: (prev, curr) => prev.alarm.name != curr.alarm.name,
        builder: (_, state) => CContentOptionBox(
          title: 'Label',
          subtitle: (state.alarm.name ?? '').isEmpty ? 'No Label' : state.alarm.name,
          onPressed: () => _onChangeLabelPressed(context),
        ),
      );

  void _onChangeLabelPressed(BuildContext context) => CDialog.show<String?>(
        context,
        label: 'Label',
        child: const AlarmDetailsLabelPopup(initialValue: 'No label'),
      ).then(context.read<AlarmDetailsScreenCubit>().onLabelChanged);
}

class _RepeatOptionBox extends StatelessWidget {
  const _RepeatOptionBox();

  @override
  Widget build(BuildContext context) => BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
        buildWhen: (prev, curr) => !prev.alarm.repeated.equals(curr.alarm.repeated),
        builder: (_, state) => CContentOptionBox(
          title: 'Repeat',
          subtitle: _handleSubtitle(state.alarm.repeated),
          onPressed: () => CDialog.show<Set<Weekday>?>(
            context,
            label: 'Repeat',
            child: AlarmDetailsRepeatPopup(initialValue: state.alarm.repeated),
          ).then(context.read<AlarmDetailsScreenCubit>().onRepeatChanged),
        ),
      );

  String _handleSubtitle(Set<Weekday> repeat) {
    if (repeat.isEmpty) return 'No repeat';
    if (repeat.equals(Weekday.every)) return 'Every day';
    if (repeat.equals(Weekday.weekdays)) return 'Weekdays';
    if (repeat.equals(Weekday.weekends)) return 'Weekends';

    return _buildWeekdaysString(repeat);
  }

  String _buildWeekdaysString(Set<Weekday> repeat) {
    var result = '';
    for (final day in repeat) {
      result += '${day.name.substring(0, 3).capitalize()}, ';
    }

    result = result.substring(0, result.length - 2);
    return result;
  }
}

class _SoundOptionBox extends StatelessWidget {
  const _SoundOptionBox();

  @override
  Widget build(BuildContext context) => CContentOptionBox(
        title: 'Sound',
        subtitle: 'Orkney',
        onPressed: () {},
      );
}
