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
class ValidatorNum<T> extends Validator {
  //
  // ===========================================================================
  ValidatorNum(T value, Type type) : super(value, type);

  Either<ValueFailure<T>, T> validate({
    num minValue,
    num maxValue,
    RegExp regex,
    bool Function(dynamic v) other,
    String otherMessage,
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
    if (other != null) {
      vo = otherValidation(other, otherMessage);
      if (vo.isLeft()) return vo;
    }
    //
    return vo;
  }

  // ===========================================================================
  Either<ValueFailure<double>, double> isDouble() {
    if (value is double) {
      return right(value);
    } else {
      return left(
        ValueFailure.valueNotDouble(failedValue: value),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<int>, int> isInt() {
    if (value is int) {
      return right(value);
    } else {
      return left(
        ValueFailure.valueNotDouble(failedValue: value),
      );
    }
  }

  // ===========================================================================
  Either<ValueFailure<T>, T> minValue(
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
  Either<ValueFailure<T>, T> maxValue(
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
