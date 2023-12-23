import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';
import 'package:wakeme/src/common/presentation/widgets/text_field/c_text_field.dart';
import 'package:wakeme/src/common/validators/validators/label_validator.dart';

class AlarmDetailsLabelPopup extends HookWidget {
  const AlarmDetailsLabelPopup({this.initialValue, super.key});

  final String? initialValue;

  void _onSubmitted(BuildContext context, ValueNotifier<String?> notifier) {
    final value = notifier.value?.trimRight();
    context.router.pop(value);
  }

  @override
  Widget build(BuildContext context) {
    final notifier = useValueNotifier<String?>(initialValue);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CTextField(
            value: initialValue,
            notifier: notifier,
            validators: [LabelValidator()],
            onSubmitted: () => _onSubmitted(context, notifier),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(bottom: 10.0),
          child: CBottomFloatingButton(
            label: 'Save',
            onPressed: () => _onSubmitted(context, notifier),
            size: CThemeSize.small,
          ),
        ),
      ],
    );
  }
}
