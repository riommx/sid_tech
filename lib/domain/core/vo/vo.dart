import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
//
import '../i_validatable.dart';
import '../failures/value_error.dart';
import '../failures/value_failure.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@immutable
abstract class ValueObject<T> extends Equatable implements IValidatable {
  // ===========================================================================
  const ValueObject();

  // ===========================================================================
  Either<ValueFailure<T>, T> get value;

  // ===========================================================================
  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  // id = identity - same as writing (right) => right
  T getOrCrash() => value.fold((f) => throw ValueError(f), id);

  // ===========================================================================
  T getOrElse(T defaultValue) => value.getOrElse(() => defaultValue);

  // ===========================================================================
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => value.fold(
        (l) => left(l),
        (r) => right(unit),
      );

  // ===========================================================================
  // FOR IValidatable
  @override
  bool isValid() => value.isRight();

  // ===========================================================================
  // FOR Equatable
  @override
  bool get stringify => true;

  // ===========================================================================
  // FOR Equatable
  @override
  List<Object> get props => [value];
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
