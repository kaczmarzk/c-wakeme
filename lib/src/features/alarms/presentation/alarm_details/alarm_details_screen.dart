import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slang/builder/utils/string_extensions.dart';
import 'package:wakeme/i18n/translations.g.dart';
import 'package:wakeme/src/core/injection/injection.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/c_dialog.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_box.dart';
import 'package:wakeme/src/core/presentation/widgets/c_timer_picker.dart';
import 'package:wakeme/src/core/presentation/widgets/content/c_content_option_box.dart';
import 'package:wakeme/src/core/utils/enum/weekday.dart';
import 'package:wakeme/src/core/utils/extension/set_ext.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/cubit/buzzer_details_screen_cubit.dart';
import 'package:wakeme/src/core/presentation/widgets/c_scaffold.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/widgets/alarm_details_label_popup.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/widgets/alarm_details_repeat_popup.dart';
import 'package:wakeme/src/features/alarms/presentation/alarm_details/widgets/alarm_details_weekday_picker.dart';

@RoutePage()
class AlarmDetailsScreen extends StatelessWidget {
  const AlarmDetailsScreen({super.key});

  @visibleForTesting
  static Widget get body => const _Body();

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

  void _handleNavigationState(BuildContext context, AlarmDetailsScreenState state) => switch (state.navigation) {
        AlarmDetailsScreenNavigationState.label => _showChangeLabelDialog(context, state),
        AlarmDetailsScreenNavigationState.repeat => _showChangeRepeatDialog(context, state),
        AlarmDetailsScreenNavigationState.sound || AlarmDetailsScreenNavigationState.none => null,
      };

  @override
  Widget build(BuildContext context) => BlocListener<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
        listener: (_, state) => _handleNavigationState(context, state),
        child: Column(
          children: [
            // const CAppBar(label: 'Edit Alarm'),
            const SizedBox(height: 10.0),
            CContentBox(
              height: 140.0,
              child: CTimePicker(
                initial: context.read<AlarmDetailsScreenCubit>().state.date,
                onDateChanged: context.read<AlarmDetailsScreenCubit>().onDateChanged,
              ),
            ),
            const SizedBox(height: 20.0),
            BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
              buildWhen: (prev, curr) => prev.weekdays != curr.weekdays,
              builder: (_, state) => AlarmDetailsWeekdaysWidget(values: state.weekdays),
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
              label: l18n.save,
              onPressed: context.read<AlarmDetailsScreenCubit>().handleSave,
              action: CBottomFloatingButtonAction(
                icon: CupertinoIcons.clear,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      );

  Future<void> _showChangeLabelDialog(BuildContext context, AlarmDetailsScreenState state) {
    return CDialog.show<String?>(
      context,
      label: 'Label',
      child: AlarmDetailsLabelPopup(initialValue: state.name),
    ).then(context.read<AlarmDetailsScreenCubit>().onLabelChanged);
  }

  Future<void> _showChangeRepeatDialog(BuildContext context, AlarmDetailsScreenState state) {
    return CDialog.show<Set<Weekday>?>(
      context,
      label: 'Repeat',
      child: AlarmDetailsRepeatPopup(initialValue: state.date.repeat),
    ).then(context.read<AlarmDetailsScreenCubit>().onRepeatChanged);
  }
}

class _LabelOptionBox extends StatelessWidget {
  const _LabelOptionBox();

  @override
  Widget build(BuildContext context) => BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
        buildWhen: (prev, curr) => prev.name != curr.name,
        builder: (_, state) => CContentOptionBox(
          title: 'Label',
          subtitle: (state.name ?? '').isEmpty ? 'No Label' : state.name,
          onPressed: context.read<AlarmDetailsScreenCubit>().onLabelPressed,
        ),
      );
}

class _RepeatOptionBox extends StatelessWidget {
  const _RepeatOptionBox();

  @override
  Widget build(BuildContext context) => BlocBuilder<AlarmDetailsScreenCubit, AlarmDetailsScreenState>(
        buildWhen: (prev, curr) => prev.date.repeat != curr.date.repeat,
        builder: (_, state) => CContentOptionBox(
          title: 'Repeat',
          subtitle: _handleSubtitle(state.date.repeat),
          onPressed: context.read<AlarmDetailsScreenCubit>().onRepeatPressed,
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
        onPressed: context.read<AlarmDetailsScreenCubit>().onSoundPressed,
      );
}
