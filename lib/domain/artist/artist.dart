//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import '../core/entity/entity.dart';
import '../core/vo/vo_int.dart';
import '../core/vo/vo_string.dart';
import '../core/failures/value_failure.dart';

part 'artist.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Artist extends Entity implements _$Artist {
  //
  const Artist._();
  //
  const factory Artist({
    @required VOInt id,
    @required VOString name,
  }) = _Artist;

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(name.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  // implements IValidatable
  @override
  bool isValid() => this.id.isValid() && name.isValid();

  @override
  String toString() =>
      'Artist(id: ${this.id.toString()} name: ${name.toString()})';
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
// *  v 1.5
// ******************************************************************
