import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
//
import 'package:sid_tech/core/failures.dart';
import 'package:sid_tech/core/errors.dart';

abstract class ValueObject<T> extends Equatable {
  //
  final Either<ValueFailure<T>, T> _unit;
  //
  const ValueObject(this._unit);
  //
  T get value => _unit.fold((l) => null, id);

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return _unit.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  //
  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return _unit.fold((f) => throw UnexpectedValueError(f), id);
  }

  //
  bool isValid() => _unit.isRight();
  //
  @override
  String toString() => _unit.fold((l) => l.toString(), (r) => r.toString());
  //
  // for Equatable
  @override
  List<Object> get props => [_unit];
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
