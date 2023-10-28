import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/core/presentation/widgets/text_field/c_text_input.dart';
import 'package:wakeme/src/core/utils/validator/c_input_validator.dart';

/// [CTextField] is a more expanded [CTextInput]
/// which contain fe validation
class CTextField extends StatefulWidget {
  const CTextField({
    required this.value,
    required this.onChanged,
    this.validators = const [],
    this.maxLength = 30,
    this.maxLines = 1,
    this.autofocus = true,
    this.focusNode,
    this.onSubmitted,
    super.key,
  });

  final String? value;
  final List<CInputValidator> validators;
  final void Function(String?) onChanged;
  final void Function(String)? onSubmitted;
  final int maxLength;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  String? _value;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  void _onChanged(String? value) {
    final index = widget.validators.indexWhere((val) => val.validate(value).isSome());
    if (index == -1) return _updateValue(value);
  }

  void _updateValue(String? value) {
    _value = widget.value ?? '';
    setState(() => _onChanged(value));
  }

  @override
  Widget build(BuildContext context) => CTextInput(
        value: _value,
        onChanged: _onChanged,
        onSubmitted: widget.onSubmitted,
        maxLength: widget.maxLength,
        maxLines: widget.maxLines,
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
      );
}
