import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/validator.dart';
import 'package:sid_tech/core/value_failure.dart';

class ValidatorString<String> extends Validator {
  //
  // ===========================================================================
  ValidatorString(String value) : super(value, String);

  // ===========================================================================
  //Either<ValueFailure<String>, String> isString() => right(value);

  // ===========================================================================
  Either<ValueFailure<String>, String> notEmpty() {
    if (value.isNotEmpty) {
      return right(value);
    } else {
      return left(ValueFailure.empty(failedValue: value));
    }
  }

  // ===========================================================================
  Either<ValueFailure<String>, String> singleLine() {
    if (value.contains('\n')) {
      return left(ValueFailure.multiline(failedValue: value));
    } else {
      return right(value);
    }
  }

  // ===========================================================================
  Either<ValueFailure<String>, String> minLength(
    int minLength,
  ) {
    if (value.length >= minLength) {
      return right(value);
    } else {
      return left(
        ValueFailure.shortLength(
            failedValue: value, minLength: minLength, length: value.length),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<String>, String> maxLength(
    int maxLength,
  ) {
    if (value.length <= maxLength) {
      return right(value);
    } else {
      return left(
        ValueFailure.exceedingLength(
            failedValue: value, maxLength: maxLength, length: value.length),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<String>, String> dateTime() {
    if (DateTime.tryParse(value) != null) {
      return right(value);
    } else {
      return left(ValueFailure.invalidDateTime(failedValue: value));
    }
  }
  // ===========================================================================

  // ===========================================================================

}
