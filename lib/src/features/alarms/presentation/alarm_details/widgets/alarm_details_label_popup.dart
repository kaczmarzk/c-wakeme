import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';
import 'package:wakeme/src/common/presentation/widgets/text_field/c_text_field.dart';
import 'package:wakeme/src/common/validators/validators/label_validator.dart';

class AlarmDetailsLabelPopup extends StatefulWidget {
  const AlarmDetailsLabelPopup({this.initialValue, super.key});

  final String? initialValue;

  @override
  State<AlarmDetailsLabelPopup> createState() => _AlarmDetailsLabelPopupState();
}

class _AlarmDetailsLabelPopupState extends State<AlarmDetailsLabelPopup> {
  late CTextFieldNotifier _notifier;

  @override
  void initState() {
    _notifier = CTextFieldNotifier(widget.initialValue);
    super.initState();
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  void _onSubmitted(BuildContext context) {
    final value = _notifier.value?.trimRight();
    context.router.pop(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CTextField(
            value: widget.initialValue,
            notifier: _notifier,
            validators: [LabelValidator()],
            onSubmitted: () => _onSubmitted(context),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(bottom: 10.0),
          child: CBottomFloatingButton(
            label: 'Save',
            onPressed: () => _onSubmitted(context),
            size: CThemeSize.small,
          ),
        ),
      ],
    );
  }
}
