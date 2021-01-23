import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/validator.dart';
import 'package:sid_tech/core/value_failure.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class ValidatorString<String> extends Validator {
  //
  // ===========================================================================
  ValidatorString(String value) : super(value, String);

  // ===========================================================================
  Either<ValueFailure<String>, String> validate({
    bool notEmpty = false,
    bool singleLine = false,
    int minLength,
    int maxLength,
    bool dateTime = false,
    RegExp regex,
  }) {
    var vo = notNull();
    if (vo.isLeft()) return vo;
    //
    if (notEmpty) {
      vo = this.notEmpty();
      if (vo.isLeft()) return vo;
    }
    //
    if (singleLine) {
      vo = this.singleLine();
      if (vo.isLeft()) return vo;
    }
    //
    if (minLength != null) {
      vo = this.minLength(minLength);
      if (vo.isLeft()) return vo;
    }
    //
    if (maxLength != null) {
      vo = this.maxLength(maxLength);
      if (vo.isLeft()) return vo;
    }
    //
    if (dateTime) {
      vo = this.dateTime();
      if (vo.isLeft()) return vo;
    }
    //
    if (regex != null) {
      vo = this.regex(regex);
      if (vo.isLeft()) return vo;
    }
    return vo;
  }

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
}
// ******************************************************************
// *    _____   _   _____      _______   ______    _____   _    _
// *   / ____| | | |  __ \    |__   __| |  ____|  / ____| | |  | |
// *  | (___   | | | |  | |      | |    | |__    | |      | |__| |
// *   \___ \  | | | |  | |      | |    |  __|   | |      |  __  |
// *   ____) | |_| | |__| |      | |    | |____  | |____  | |  | |
// *  |_____/  (_) |_____/       |_|    |______|  \_____| |_|  |_|
// *
// *  ┈┈┈╭━━╮┈┈┈┈┈┈
// *  ┈┈╭╯┊◣╰━━━━╮┈┈
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ 2021 >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 1.3
// ******************************************************************
