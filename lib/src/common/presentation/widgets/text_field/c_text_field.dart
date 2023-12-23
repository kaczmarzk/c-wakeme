import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/widgets/text_field/c_text_input.dart';
import 'package:wakeme/src/common/validators/c_input_validator.dart';

typedef CTextFieldNotifier = ValueNotifier<String?>;

/// [CTextField] is a more expanded [CTextInput]
/// which contain fe validation, value notifier support
class CTextField extends StatefulWidget {
  const CTextField({
    required this.value,
    required this.notifier,
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
  final CTextFieldNotifier notifier;
  final VoidCallback? onSubmitted;
  final int maxLength;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  State<CTextField> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  void _onChanged(String? value) {
    /// ignore validators for empty string or null
    if ((value ?? '').isEmpty) {
      widget.notifier.value = value;
      return setState(() {});
    }

    final index = widget.validators.indexWhere((val) => val.validate(value).isSome());
    if (index == -1) widget.notifier.value = value;
    return setState(() {});
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: widget.notifier,
        builder: (_, value, __) => CTextInput(
          value: widget.notifier.value,
          onChanged: _onChanged,
          onSubmitted: (_) => widget.onSubmitted?.call(),
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          focusNode: widget.focusNode,
          autofocus: widget.autofocus,
        ),
      );
}
