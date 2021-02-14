import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/vo.dart';
import 'package:sid_tech/core/value_failure.dart';
import 'package:sid_tech/core/validator_num.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class VOInt extends ValueObject<int> {
  //
  // ===========================================================================
  @override
  final Either<ValueFailure<int>, int> value;

  // ===========================================================================
  VOInt._(this.value);

  // ===========================================================================
  factory VOInt({
    @required int value,
    int minValue,
    int maxValue,
    RegExp regex,
    bool Function(dynamic v) otherValidation,
    String otherValidationMessage,
  }) {
    final validator = ValidatorNum<int>(value, int);
    //
    final vo = validator(
        minValue: minValue,
        maxValue: maxValue,
        regex: regex,
        otherValidation: otherValidation,
        otherValidationMessage: otherValidationMessage);
    //
    return VOInt._(vo);
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
// *  v 1.4
// ******************************************************************
