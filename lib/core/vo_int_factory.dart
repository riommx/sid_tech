import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/validators.dart';
//
import 'package:sid_tech/core/vo_factory.dart';
import 'package:sid_tech/core/vo_int.dart';

class VOIntFactory implements VOFactory {
  @override
  VOInt create({
    @required int value,
    int maxValue,
    int minValue,
    RegExp regex,
  }) {
    //
    Either<ValueFailure<int>, int> vo;
    //
    final validations = [];
    validations.add({'function': validateIntValueNotNull, 'parameter': VOInt});
    if (maxValue != null) {
      validations.add({'function': validateMaxValue, 'parameter': maxValue});
    }
    if (minValue != null) {
      validations.add({'function': validateMinValue, 'parameter': minValue});
    }
    if (regex != null) {
      validations.add({'function': validateIntRegex, 'parameter': regex});
    }
    //
    //
    var i = 0;
    //
    do {
      vo = validations[i]['function'].call(
        value,
        validations[i]['parameter'],
      );
      i++;
    } while (vo.isRight() && i < validations.length);
    //
    return VOInt(vo);
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
