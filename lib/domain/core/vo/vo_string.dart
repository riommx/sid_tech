import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
//
import '../entity/validator_string.dart';
import '../failures/value_failure.dart';
import 'vo.dart';

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
    bool Function(dynamic v) otherValidation,
    String otherValidationMessage,
  }) {
    final validator = ValidatorString(value);
    //
    var vo = validator(
      notEmpty: notEmpty,
      singleLine: singleLine,
      minLength: minLength,
      maxLength: maxLength,
      dateTime: dateTime,
      regex: regex,
      otherValidation: otherValidation,
      otherValidationMessage: otherValidationMessage,
    );
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
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 2.0
// ******************************************************************
