import 'package:fpdart/fpdart.dart';
import 'package:wakeme/src/core/utils/enum/input_validation_error.dart';
import 'package:wakeme/src/core/utils/validator/c_input_validator.dart';

class LabelValidator extends CStringValidator {
  @override
  Option<InputValidationError> validate(String input) {
    final isFirstCharWhitespace = input.trimLeft() != input;
    final isMoreThanOneWhitespaceOnRight = input.length >= input.trimRight().length + 2;
    if (isFirstCharWhitespace || isMoreThanOneWhitespaceOnRight) return some(InputValidationError.invalid);
    return super.validate(input);
  }
}
