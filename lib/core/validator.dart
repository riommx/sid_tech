import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/value_failure.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class Validator<T> {
  //
  final T value;
  final Type type;
  //
  Map failure;

  // ===========================================================================
  Validator(this.value, this.type);
  // ==

  // ===========================================================================
  dynamic notNull() {
    //
    failure = {
      'right': value != null,
      'String': ValueFailure<String>.nullValue(type: type),
      'int': ValueFailure<int>.nullValue(type: type),
      'double': ValueFailure<double>.nullValue(type: type),
    };
    return returnVO();
  }
  // ==

  // ===========================================================================
  dynamic regex(RegExp regex) {
    failure = {
      'right': regex.hasMatch(value.toString()),
      'String': ValueFailure<String>.invalidRegex(
          failedValue: value.toString(),
          regex: '${regex.pattern.toString()} ',
          type: value.runtimeType),
      'int': ValueFailure<int>.invalidRegex(
          failedValue: int.tryParse(value.toString()),
          regex: '${regex.pattern.toString()} ',
          type: value.runtimeType),
      'double': ValueFailure<double>.invalidRegex(
          failedValue: double.tryParse(value.toString()),
          regex: '${regex.pattern.toString()} ',
          type: value.runtimeType),
    };
    return returnVO();
  }
  // ==

  // ===========================================================================
  dynamic returnVO() {
    switch (type) {
      case String:
        return voString();
      //
      case int:
        return voInt();
      //
      case double:
        return voDouble();
    }
  }
  // ==

  // ===========================================================================
  Either<ValueFailure<String>, String> voString() =>
      failure['right'] ? right(value.toString()) : left(failure['String']);
  // ==

  // ===========================================================================
  Either<ValueFailure<int>, int> voInt() => failure['right']
      ? right(int.parse(value.toString()))
      : left(failure['int']);
  // ==

  // ===========================================================================
  Either<ValueFailure<double>, double> voDouble() => failure['right']
      ? right(double.parse(value.toString()))
      : left(failure['double']);
  // ==
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
