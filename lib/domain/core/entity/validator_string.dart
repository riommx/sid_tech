import 'package:dartz/dartz.dart';
//
import '../failures/value_failure.dart';
import 'validator.dart';

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
  Either<ValueFailure<String>, String> call({
    bool notEmpty = false,
    bool singleLine = false,
    int minLength,
    int maxLength,
    bool dateTime = false,
    RegExp regex,
    dynamic otherValidationMessage,
    bool Function(String v) otherValidation,
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
    //
    if (otherValidation != null) {
      vo = this.otherValidation(otherValidation, otherValidationMessage);
      if (vo.isLeft()) return vo;
    }
    // RETURN <<<<<
    return vo;
  }

  // ===========================================================================
  Either<ValueFailure<String>, String> notEmpty() => value.isEmpty
      ? left(ValueFailure.empty(failedValue: value))
      : right(value);

  // ===========================================================================
  Either<ValueFailure<String>, String> singleLine() => value.contains('\n')
      ? left(ValueFailure.multiline(failedValue: value))
      : right(value);

  // ===========================================================================
  Either<ValueFailure<String>, String> minLength(
    int minLength,
  ) =>
      value.length < minLength
          ? left(
              ValueFailure.shortLength(
                  failedValue: value,
                  minLength: minLength,
                  length: value.length),
            )
          : right(value);

  // ===========================================================================
  Either<ValueFailure<String>, String> maxLength(
    int maxLength,
  ) =>
      value.length > maxLength
          ? left(
              ValueFailure.exceedingLength(
                  failedValue: value,
                  maxLength: maxLength,
                  length: value.length),
            )
          : right(value);

  // ===========================================================================
  Either<ValueFailure<String>, String> dateTime() =>
      DateTime.tryParse(value) == null
          ? left(ValueFailure.invalidDateTime(failedValue: value))
          : right(value);
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
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 2.0
// ******************************************************************
