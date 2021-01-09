import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/validators.dart';
//
import 'package:sid_tech/core/vo_factory.dart';
import 'package:sid_tech/core/vo_string.dart';

class VOStringFactory implements VOFactory {
  //
  @override
  VOString create({
    @required String value,
    int maxLength,
    int minLength,
    bool singleLine,
    bool notEmpty,
    RegExp regex,
    bool dateTime,
  }) {
    //
    Either<ValueFailure<String>, String> vo;
    //
    final validations = [];
    validations
        .add({'function': validateStrValueNotNull, 'parameter': VOString});
    if (maxLength != null) {
      validations.add({'function': validateMaxLength, 'parameter': maxLength});
    }
    if (minLength != null) {
      validations.add({'function': validateMinLength, 'parameter': minLength});
    }
    if (singleLine != null && singleLine) {
      validations.add({'function': validateSingleLine, 'parameter': null});
    }
    if (notEmpty != null && notEmpty) {
      validations.add({'function': validateNotEmpty, 'parameter': null});
    }
    if (regex != null) {
      validations.add({'function': validateStrRegex, 'parameter': regex});
    }
    if (dateTime != null) {
      validations.add({'function': validateDateTimeParse, 'parameter': null});
    }
    //
    //
    var i = 0;
    do {
      if (validations[i]['parameter'] != null) {
        vo = validations[i]['function'].call(
          value,
          validations[i]['parameter'],
        );
      } else {
        vo = validations[i]['function'].call(
          value,
        );
      }
      //
      i++;
    } while (vo.isRight() && i < validations.length);
    //
    //
    return VOString(vo);
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
// * v 1.0
// ******************************************************************