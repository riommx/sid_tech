import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/vo.dart';
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/validator_num.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class VONum extends ValueObject<num> {
  //
  // ===========================================================================
  @override
  final Either<ValueFailure<num>, num> value;

  // ===========================================================================
  const VONum._(this.value);

  // ===========================================================================
  factory VONum({
    @required num value,
    bool isDouble = false,
    num minValue,
    num maxValue,
    RegExp regex,
  }) {
    final validator = ValidatorNum(value);
    //
    var vo = validator.notNull();
    if (vo.isLeft()) return VONum._(vo);
    //
    if (isDouble) {
      vo = validator.isDouble();
      if (vo.isLeft()) return VONum._(vo);
    } else {
      vo = validator.isInt();
      if (vo.isLeft()) return VONum._(vo);
    }
    //
    if (minValue != null) {
      vo = validator.minValue(minValue);
      if (vo.isLeft()) return VONum._(vo);
    }
    //
    if (maxValue != null) {
      vo = validator.maxValue(maxValue);
      if (vo.isLeft()) return VONum._(vo);
    }
    //
    if (regex != null) {
      vo = validator.regex(regex);
      if (vo.isLeft()) return VONum._(vo);
    }
    //
    return VONum._(vo);
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
// *  v 1.2
// ******************************************************************
