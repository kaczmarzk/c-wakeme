import 'package:fpdart/fpdart.dart';
import 'package:wakeme/src/common/enums/input_validation_error.dart';
import 'package:wakeme/src/common/validators/c_input_validator.dart';

class LabelValidator extends CStringValidator {
  @override
  Option<InputValidationError> validate(String input) {
    final isFirstCharWhitespace = input.trimLeft() != input;
    final isMoreThanOneWhitespaceOnRight = input.length >= input.trimRight().length + 2;
    if (isFirstCharWhitespace || isMoreThanOneWhitespaceOnRight) return some(InputValidationError.invalid);
    return super.validate(input);
  }
}
