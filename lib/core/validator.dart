import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/failures.dart';

abstract class Validator<T> {
  //
  // ===========================================================================
  const Validator(this.value);

  final T value;

  // ===========================================================================
  Either<ValueFailure<T>, T> notNull() {
    if (value != null) {
      return right(value);
    } else {
      return left(ValueFailure.nullValue(type: value.runtimeType));
    }
  }

  // ===========================================================================
  Either<ValueFailure<T>, T> regex(RegExp regex) {
    if (regex.hasMatch(value.toString())) {
      return right(value);
    } else {
      return left(ValueFailure.invalidRegex(
          failedValue: value,
          regex: '${regex.pattern.toString()} ',
          type: value.runtimeType));
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
// * v 1.0
// ******************************************************************
