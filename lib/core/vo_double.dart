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
class VODouble extends ValueObject<double> {
  //
  // ===========================================================================
  @override
  final Either<ValueFailure<double>, double> value;

  // ===========================================================================
  VODouble._(this.value);

  // ===========================================================================
  factory VODouble({
    @required double value,
    double minValue,
    double maxValue,
    RegExp regex,
    bool Function(dynamic v) other,
    String otherMessage,
  }) {
    final validator = ValidatorNum<double>(value, double);
    //
    final vo = validator.validate(
        minValue: minValue,
        maxValue: maxValue,
        regex: regex,
        other: other,
        otherMessage: otherMessage);
    //
    return VODouble._(vo);
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
