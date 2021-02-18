import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
//
import '../entity/validator_kt_list.dart';
import '../failures/value_failure.dart';
import 'vo.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class VOKtList<T> extends ValueObject<KtList<T>> {
  //
  // ===========================================================================
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  final _maxLength;

  // ===========================================================================
  const VOKtList._(this.value, this._maxLength);

  // ===========================================================================
  factory VOKtList({
    @required KtList<T> value,
    bool notEmpty = false,
    int minLength,
    int maxLength,
  }) {
    final validator = ValidatorKtList(value);
    //
    var vo = validator(
      notEmpty: notEmpty,
      minLength: minLength,
      maxLength: maxLength,
    );
    //if maxLength is null there is no length limit
    maxLength ??= 0;
    return VOKtList._(vo, maxLength);
  }

  // ===========================================================================
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  // if _maxLength == 0 then there is no length limit
  // ===========================================================================
  bool get isFull => _maxLength > 0 ? length == _maxLength : false;
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
