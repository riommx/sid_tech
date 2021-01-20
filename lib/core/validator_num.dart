import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/validator.dart';
import 'package:sid_tech/core/failures.dart';

class ValidatorNum<num> extends Validator {
  //
  // ===========================================================================
  const ValidatorNum(num value) : super(value);

  // ===========================================================================
  Either<ValueFailure<num>, num> isDouble() {
    if (value is double) {
      return right(value);
    } else {
      return left(
        ValueFailure.valueNotDouble(failedValue: value),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<num>, num> isInt() {
    if (value is int) {
      return right(value);
    } else {
      return left(
        ValueFailure.valueNotDouble(failedValue: value),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<num>, num> minValue(
    num minValue,
  ) {
    if (value >= minValue) {
      return right(value);
    } else {
      return left(
        ValueFailure.subMinValue(failedValue: value, min: minValue.toString()),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<num>, num> maxValue(
    num maxValue,
  ) {
    if (value.length <= maxValue) {
      return right(value);
    } else {
      return left(
        ValueFailure.overMaxValue(failedValue: value, max: maxValue.toString()),
      );
    }
  }
}
