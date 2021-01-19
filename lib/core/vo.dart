import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
//
import 'package:sid_tech/core/i_validatable.dart';
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/errors.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class ValueObject<T> extends Equatable implements IValidatable {
  //
  // ===========================================================================
  const ValueObject(this._value);

  // ===========================================================================
  final Either<ValueFailure<T>, T> _value;

  // ===========================================================================
  T get value => _value.fold((l) => null, id);

  // ===========================================================================
  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return _value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  // ===========================================================================
  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return _value.fold((f) => throw UnexpectedValueError(f), id);
  }

  // ===========================================================================
  @override
  bool isValid() => _value.isRight();

  // ===========================================================================
  @override
  String toString() => _value.fold((l) => l.toString(), (r) => r.toString());

  // ===========================================================================
  // FOR Equatable
  @override
  List<Object> get props => [_value];
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
// *  v 1.1
// ******************************************************************
