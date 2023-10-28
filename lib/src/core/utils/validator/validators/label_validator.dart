import 'package:fpdart/fpdart.dart';
import 'package:wakeme/src/core/utils/enum/input_validation_error.dart';
import 'package:wakeme/src/core/utils/validator/c_input_validator.dart';

class LabelValidator extends CStringValidator {
  @override
  Option<InputValidationError> validate(String? input) {
    if (input == null) return some(InputValidationError.unknown);
    if (input == 'dupa') return some(InputValidationError.unknown);
    return super.validate(input);
  }
}
