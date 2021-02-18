//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
//
import '../core/entity/entity.dart';
import '../core/vo/vo_int.dart';
import '../core/vo/vo_string.dart';
import '../core/vo/vo_kt_list.dart';
import '../core/failures/value_failure.dart';

part 'playlist.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Playlist extends Entity implements _$Playlist {
  //
  const Playlist._();
  //
  const factory Playlist({
    @required VOInt id,
    @required VOString name,
    @required VOKtList<VOInt> tracks,
  }) = _Playlist;

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption => this
      .id
      .failureOrUnit
      .andThen(name.failureOrUnit)
      .andThen(tracks.failureOrUnit)
      .andThen(
        tracks
            .getOrCrash()
            .map((track) => track.failureOrUnit)
            .filter((e) => e.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((f) => left(f), (r) => right(unit)),
      )
      .fold((f) => some(f), (_) => none());

  // implements IValidatable
  @override
  bool isValid() {
    var valid = this.id.isValid() && name.isValid();
    if (valid) {
      tracks.getOrCrash().forEach((track) => valid = valid && track.isValid());
    }
    return valid;
  }

  @override
  String toString() {
    var str = 'Playlist(id: ${this.id.toString()} ';
    str += 'name: ${name.toString()} tracks: ${tracks.toString()})';
    return str;
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
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 1.5
// ******************************************************************
