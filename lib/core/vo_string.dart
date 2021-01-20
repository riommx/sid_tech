import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/vo.dart';
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/validator_string.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class VOString extends ValueObject<String> {
  //
  // ===========================================================================
  @override
  final Either<ValueFailure<String>, String> value;

  // ===========================================================================
  const VOString._(this.value);

  // ===========================================================================
  factory VOString({
    @required String value,
    bool notEmpty = false,
    bool singleLine = false,
    int minLength,
    int maxLength,
    bool dateTime = false,
    RegExp regex,
  }) {
    final validator = ValidatorString(value);
    //
    var vo = validator.notNull();
    if (vo.isLeft()) return VOString._(vo);
    //
    if (notEmpty) {
      vo = validator.notEmpty();
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    if (singleLine) {
      vo = validator.singleLine();
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    if (minLength != null) {
      vo = validator.minLength(minLength);
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    if (maxLength != null) {
      vo = validator.maxLength(maxLength);
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    if (dateTime) {
      vo = validator.dateTime();
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    if (regex != null) {
      vo = validator.regex(regex);
      if (vo.isLeft()) return VOString._(vo);
    }
    //
    return VOString._(vo);
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
