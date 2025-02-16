import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_colors.dart';
import 'package:wakeme/src/common/presentation/theme/c_theme_styles.dart';
import 'package:wakeme/src/common/presentation/widgets/c_component.dart';

class CTextInput extends CStatefulComponent {
  const CTextInput({
    required this.value,
    required this.onChanged,
    this.maxLength = 30,
    this.maxLines = 1,
    this.autofocus = true,
    this.focusNode,
    this.onSubmitted,
    super.key,
  });

  final String? value;
  final void Function(String?) onChanged;
  final void Function(String)? onSubmitted;
  final int maxLength;
  final int maxLines;
  final FocusNode? focusNode;
  final bool autofocus;

  @override
  State<CTextInput> createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CTextInput oldWidget) {
    if (_controller.value.text != widget.value) {
      _controller.text = widget.value ?? '';
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      keyboardType: TextInputType.name,
      onSubmitted: widget.onSubmitted,
      maxLines: widget.maxLines,
      autofocus: widget.autofocus,
      onChanged: widget.onChanged,
      maxLength: widget.maxLength,
      focusNode: widget.focusNode,
      controller: _controller,

      /// styles
      cursorColor: widget.cColors.foregroundSecondary,
      decoration: const BoxDecoration(color: CThemeColors.darkJungle),
      style: CThemeStyles.albertRegular_16.copyWith(color: widget.cColors.foregroundPrimary),

      /// keyboard features
      autocorrect: false,
      enableSuggestions: false,
      enableIMEPersonalizedLearning: false,
      enableInteractiveSelection: false,
      scribbleEnabled: false,
    );
  }
}
