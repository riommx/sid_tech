import 'package:dartz/dartz.dart';
//import 'package:meta/meta.dart';
import 'package:kt_dart/kt.dart';
//
import 'package:sid_tech/core/failures.dart';

// DATETIME

// STRING
Either<ValueFailure<String>, String> validateStrValueNotNull(
  String value,
  Type type,
) {
  if (value != null) {
    return right(value);
  } else {
    return left(ValueFailure.nullValue(type: type));
  }
}

Either<ValueFailure<String>, String> validateDateTimeParse(
  String value,
) {
  if (DateTime.tryParse(value) != null) {
    return right(value);
  } else {
    return left(ValueFailure.invalidDateTime(failedValue: value));
  }
}

Either<ValueFailure<String>, String> validateMaxLength(
  String value,
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

Either<ValueFailure<String>, String> validateMinLength(
  String value,
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

Either<ValueFailure<String>, String> validateNotEmpty(String value) {
  if (value.isNotEmpty) {
    return right(value);
  } else {
    return left(ValueFailure.empty(failedValue: value));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String value) {
  if (value.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: value));
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> validateStrRegex(
    String value, RegExp regex) {
  if (regex.hasMatch(value)) {
    return right(value);
  } else {
    return left(ValueFailure.invalidRegex(
        failedValue: value, regex: '${regex.pattern.toString()} '));
  }
}
// ================================================

// INT
Either<ValueFailure<int>, int> validateIntValueNotNull(
  int value,
  Type type,
) {
  if (value != null) {
    return right(value);
  } else {
    return left(ValueFailure.nullValue(type: type));
  }
}

Either<ValueFailure<int>, int> validateMaxValue(
  int input,
  int maxValue,
) {
  if (input <= maxValue) {
    return right(input);
  } else {
    return left(ValueFailure.overMaxValue(failedValue: input, max: maxValue));
  }
}

Either<ValueFailure<int>, int> validateMinValue(
  int input,
  int minValue,
) {
  if (input >= minValue) {
    return right(input);
  } else {
    return left(ValueFailure.subMinValue(failedValue: input, min: minValue));
  }
}

Either<ValueFailure<int>, int> validateIntRegex(int value, RegExp regex) {
  if (regex.hasMatch(value.toString())) {
    return right(value);
  } else {
    return left(ValueFailure.invalidRegex(
        failedValue: value, regex: '${regex.pattern.toString()} '));
  }
}
// ===================================================

// =================================

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

// =======================

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

// =====================
