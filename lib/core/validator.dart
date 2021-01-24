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
  Map _voMap;

  // ===========================================================================
  Validator(this.value, this.type);
  // ==

  // ===========================================================================
  dynamic notNull() {
    //
    _voMap = {
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
    var failure;
    switch (type) {
      case String:
        failure = ValueFailure<String>.invalidRegex(
            failedValue: value.toString(),
            regex: '${regex.pattern.toString()} ',
            type: value.runtimeType);
        break;
      //
      case int:
        failure = ValueFailure<int>.invalidRegex(
            failedValue: int.tryParse(value.toString()),
            regex: '${regex.pattern.toString()} ',
            type: value.runtimeType);
        break;
      //
      case double:
        failure = ValueFailure<double>.invalidRegex(
            failedValue: double.tryParse(value.toString()),
            regex: '${regex.pattern.toString()} ',
            type: value.runtimeType);
        break;
    }
    _voMap = {'right': regex.hasMatch(value.toString()), 'failure': failure};
    //
    return returnVO();
  }
  // ==

  dynamic otherValidation(bool Function(T v) other, [String msg]) {
    //, String message) {
    var message = msg ?? 'Fail in other kind of validation';
    var failure;
    switch (type) {
      case String:
        failure = ValueFailure<String>.notPassTheValidation(
            failedValue: value.toString(), type: type, message: message);
        break;
      //
      case int:
        failure = ValueFailure<int>.notPassTheValidation(
            failedValue: int.tryParse(value.toString()),
            type: type,
            message: message);
        break;
      //
      case double:
        failure = ValueFailure<double>.notPassTheValidation(
            failedValue: double.tryParse(value.toString()),
            type: type,
            message: message);
        break;
    }
    _voMap = {'right': other(value), 'failure': failure};
    //
    return returnVO();
  }

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
      _voMap['right'] ? right(value.toString()) : left(_voMap['failure']);
  // ==

  // ===========================================================================
  Either<ValueFailure<int>, int> voInt() => _voMap['right']
      ? right(int.parse(value.toString()))
      : left(_voMap['failure']);
  // ==

  // ===========================================================================
  Either<ValueFailure<double>, double> voDouble() => _voMap['right']
      ? right(double.parse(value.toString()))
      : left(_voMap['failure']);
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
