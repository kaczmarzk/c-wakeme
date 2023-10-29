import 'package:fpdart/fpdart.dart';
import 'package:wakeme/src/core/utils/enum/input_validation_error.dart';

abstract class CInputValidator<T> {
  Option<InputValidationError> validate(T input);
}

class CStringValidator extends CInputValidator<String> {
  static final onlyChars = RegExp('[a-zA-Z]');

  @override
  Option<InputValidationError> validate(String input) {
    if (input.isNotEmpty && !onlyChars.hasMatch(input)) return some(InputValidationError.invalid);
    return none();
  }
}
