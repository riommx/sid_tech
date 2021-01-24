import 'package:freezed_annotation/freezed_annotation.dart';
//
part 'value_failure.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
// VALIDATOR --------------------------

  //
  const factory ValueFailure.nullValue({
    @required Type type,
  }) = NullValue<T>;
  //
  const factory ValueFailure.invalidRegex({
    @required T failedValue,
    @required String regex,
    @required Type type,
  }) = InvalidRegex<T>;

  //
  const factory ValueFailure.notPassTheValidation({
    @required T failedValue,
    @required Type type,
    @required String message,
  }) = NotPassTheValidation<T>;
// VALIDATOR STRING -------------------

  //
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  //
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  //
  const factory ValueFailure.shortLength({
    @required T failedValue,
    @required int length,
    @required int minLength,
  }) = ShortLength<T>;
  //
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int length,
    @required int maxLength,
  }) = ExceedingLength<T>;
  //
  const factory ValueFailure.invalidDateTime({
    @required T failedValue,
  }) = InvalidDateTime<T>;

// VALIDATOR NUM =======================

  //
  const factory ValueFailure.valueNotInt({
    @required T failedValue,
  }) = ValueNotInt<T>;
  //
  const factory ValueFailure.valueNotDouble({
    @required T failedValue,
  }) = ValueNotDouble<T>;
  //
  const factory ValueFailure.overMaxValue({
    @required T failedValue,
    @required String max,
  }) = OverMaxValue<T>;
  //
  const factory ValueFailure.subMinValue({
    @required T failedValue,
    @required String min,
  }) = SubMinValue<T>;

//==============================================================================

  //
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  //

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
