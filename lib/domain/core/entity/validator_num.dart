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
class ValidatorNum<T> extends Validator {
  //
  // ===========================================================================
  ValidatorNum(T value, Type type) : super(value, type);

  // ===========================================================================
  Either<ValueFailure<T>, T> call({
    num minValue,
    num maxValue,
    RegExp regex,
    bool Function(dynamic v) otherValidation,
    String otherValidationMessage,
  }) {
    var vo = notNull();
    if (vo.isLeft()) return vo;
    //
    switch (type) {
      case int:
        vo = isInt();
        break;
      case double:
        vo = isDouble();
        break;
    }
    if (vo.isLeft()) return vo;
    //
    if (minValue != null) {
      vo = this.minValue(minValue);
      if (vo.isLeft()) return vo;
    }
    //
    if (maxValue != null) {
      vo = this.maxValue(maxValue);
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
  Either<ValueFailure<double>, double> isDouble() => value is double
      ? right(value)
      : left(
          ValueFailure.valueNotDouble(failedValue: value),
        );

  // ===========================================================================
  Either<ValueFailure<int>, int> isInt() => value is int
      ? right(value)
      : left(
          ValueFailure.valueNotDouble(failedValue: value),
        );

  // ===========================================================================
  Either<ValueFailure<T>, T> minValue(
    num minValue,
  ) =>
      value < minValue
          ? left(
              ValueFailure.subMinValue(
                  failedValue: value, min: minValue.toString()),
            )
          : right(value);

  // ===========================================================================
  Either<ValueFailure<T>, T> maxValue(
    num maxValue,
  ) =>
      value.length > maxValue
          ? left(
              ValueFailure.overMaxValue(
                  failedValue: value, max: maxValue.toString()),
            )
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
