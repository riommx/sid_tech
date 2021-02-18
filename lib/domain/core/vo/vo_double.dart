import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
//
import '../entity/validator_num.dart';
import '../failures/value_failure.dart';
import 'vo.dart';

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
    bool Function(dynamic v) otherValidation,
    String otherValidationMessage,
  }) {
    final validator = ValidatorNum<double>(value, double);
    //
    final vo = validator(
        minValue: minValue,
        maxValue: maxValue,
        regex: regex,
        otherValidation: otherValidation,
        otherValidationMessage: otherValidationMessage);
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
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 2.0
// ******************************************************************
