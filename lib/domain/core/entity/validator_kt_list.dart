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
class ValidatorKtList<KtList> extends Validator {
  //
  // ===========================================================================
  ValidatorKtList(KtList value) : super(value, KtList);

  // ===========================================================================
  Either<ValueFailure<KtList>, KtList> call({
    bool notEmpty = false,
    int minLength,
    int maxLength,
  }) {
    // Guard Clause
    if (value == null) {
      return Left(ValueFailure<KtList>.nullValue(type: KtList));
    }
    var vo;
    //
    // vo = notNull();
    // if (vo.isLeft()) return vo;
    //
    if (notEmpty) {
      vo = this.notEmpty();
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
    // RETURN <<<<<
    return vo;
  }

  // ===========================================================================
  Either<ValueFailure<KtList>, KtList> notEmpty() => value.isEmpty
      ? left(ValueFailure.empty(failedValue: value))
      : right(value);

  // ===========================================================================
  Either<ValueFailure<KtList>, KtList> minLength(
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
  Either<ValueFailure<KtList>, KtList> maxLength(
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
// *   v 2.0
// ******************************************************************
