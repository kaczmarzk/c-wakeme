import 'package:auto_route/auto_route.dart';
import 'package:enough_platform_widgets/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wakeme/src/common/enums/weekday.dart';
import 'package:wakeme/src/common/extensions/string_ext.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_toggle_button.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';

class AlarmDetailsRepeatPopup extends HookWidget {
  const AlarmDetailsRepeatPopup({required this.initialValue, super.key});

  final Set<Weekday> initialValue;

  @override
  Widget build(BuildContext context) {
    final state = useState<Set<Weekday>>(initialValue);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          child: Row(
            children: [
              Expanded(
                child: CToggleButton(
                  label: 'Weekdays',
                  onPressed: () => _onDaysChanged(Weekday.weekdays, state),
                  active: state.value.containsAll(Weekday.weekdays),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: CToggleButton(
                  label: 'Weekends',
                  onPressed: () => _onDaysChanged(Weekday.weekends, state),
                  active: state.value.containsAll(Weekday.weekends),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: Builder(
            builder: (_) {
              /// out sunday as first
              final values = [Weekday.sunday, ...Weekday.weekdays, Weekday.saturday];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: values
                    .map(
                      (day) => _Component(
                        label: day.name.capitalize(),
                        value: state.value.contains(day),
                        onChanged: (_) => _onDaysChanged({day}, state),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0).copyWith(bottom: 10.0),
          child: CBottomFloatingButton(
            label: 'Save',
            onPressed: () => context.router.pop(state.value),
            size: CThemeSize.small,
          ),
        ),
      ],
    );
  }

  void _onDaysChanged(Set<Weekday> days, ValueNotifier<Set<Weekday>> state) {
    final isActive = state.value.containsAll(days);
    if (isActive) {
      state.value = Set.of(state.value)..removeAll(days);
      return;
    }
    state.value = Set.of(state.value)..addAll(days);
  }
}

class _Component extends StatelessWidget {
  const _Component({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) => CupertinoInkWell(
        pressColor: CThemeColors.cinder.withOpacity(0.33),
        onTap: () => onChanged(!value),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: CThemeStyles.gilroyMedium_16.copyWith(
                  color: CThemeColors.platinum,
                  fontSize: 14,
                ),
              ),
            ),
            CupertinoCheckbox(
              value: value,
              onChanged: onChanged,
              activeColor: CThemeColors.platinum,
              checkColor: CThemeColors.darkJungle,
            ),
          ],
        ),
      );
}
