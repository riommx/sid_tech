//import 'dart:indexed_db';

import 'package:freezed_annotation/freezed_annotation.dart';
//
part 'failures.freezed.dart';

//
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //
  const factory ValueFailure.nullValue({
    @required Type type,
  }) = NullValue<T>;
  //
  const factory ValueFailure.invalidDateTime({
    @required T failedValue,
  }) = InvalidDateTime<T>;
  //
  const factory ValueFailure.overMaxValue({
    @required T failedValue,
    @required int max,
  }) = OverMaxValue<T>;
  //
  const factory ValueFailure.subMinValue({
    @required T failedValue,
    @required int min,
  }) = SubMinValue<T>;
  //
  const factory ValueFailure.invalidRegex({
    @required T failedValue,
    @required String regex,
  }) = IntRegex<T>;
  //
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int length,
    @required int maxLength,
  }) = ExceedingLength<T>;
  //
  const factory ValueFailure.shortLength({
    @required T failedValue,
    @required int length,
    @required int minLength,
  }) = ShortLength<T>;
  //
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
  //
  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = Multiline<T>;
  //

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
  //
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  //
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
}
