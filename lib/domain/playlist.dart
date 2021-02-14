//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';
import 'package:sid_tech/core/value_failure.dart';

part 'playlist.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Playlist extends Entity with _$Playlist {
  //
  const Playlist._();
  //
  const factory Playlist({
    @required VOInt id,
    @required VOString name,
    @required List<VOInt> tracks,
  }) = _Playlist;

  // from Entity
  @override
  Map toMap() => {
        // id = identity - same as writing (right) => right
        'id': this.id.value.fold((l) => l, id).toString(),
        'name': name.value.fold((l) => l, id),
        'tracks': _tracksToList(),
      };

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption => this
      .id
      .failureOrUnit
      .andThen(name.failureOrUnit)
      .andThen(
        tracks
            .cast()
            .map((track) => track.failureOrUnit)
            .where((e) => e.isLeft())
            .first(orElse: (_) => none())
            .fold(() => right(unit), (f) => left(f)),
      )
      .fold((f) => some(f), (_) => none());

  // implements IValidatable
  @override
  bool isValid() {
    var valid = this.id.isValid() && name.isValid();
    for (var track in tracks) {
      valid = valid && track.isValid();
    }
    return valid;
  }

  // for toMap()
  List _tracksToList() {
    var list = [];
    tracks.forEach((t) => list.add(t.value.fold((l) => l, id)));
    return list;
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
