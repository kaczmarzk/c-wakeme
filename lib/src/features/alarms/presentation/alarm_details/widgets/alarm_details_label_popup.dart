import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/c_core/c_component.dart';
import 'package:wakeme/src/core/presentation/widgets/button/c_bottom_floating_button.dart';
import 'package:wakeme/src/core/presentation/widgets/text_field/c_text_input.dart';

class AlarmDetailsLabelPopup extends StatefulWidget {
  const AlarmDetailsLabelPopup({required this.initialValue, super.key});

  final String initialValue;

  @override
  State<AlarmDetailsLabelPopup> createState() => _AlarmDetailsLabelPopupState();
}

class _AlarmDetailsLabelPopupState extends State<AlarmDetailsLabelPopup> {
  String _value = 'initial value';

  void onChanged(String? value) {
    if (value != null && value != 'dupa') _value = value;
    setState(() {});
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
          child: CTextInput(
            value: _value,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(bottom: 10.0),
          child: CBottomFloatingButton(
            label: 'Save',
            onPressed: () => context.router.pop(_value),
            size: CThemeSize.small,
          ),
        ),
      ],
    );
  }
}
