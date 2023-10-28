import 'package:fpdart/fpdart.dart';
import 'package:wakeme/src/core/utils/enum/input_validation_error.dart';

abstract class CInputValidator<T> {
  Option<InputValidationError> validate(T input);
}

class CStringValidator extends CInputValidator<String?> {
  @override
  Option<InputValidationError> validate(String? input) {
    if (input == null) return some(InputValidationError.unknown);
    return none();
  }
}
