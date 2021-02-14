//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';
import 'package:sid_tech/core/value_failure.dart';

part 'track.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Track extends Entity with _$Track {
  const Track._();

  const factory Track({
    @required VOInt id,
    @required VOString title,
    @required VOInt duration, // seconds
    @required VOInt albumId,
    @required VOInt artistId,
    @required VOString previewURL,
  }) = _Track;

  // from Entity
  @override
  Map toMap() => {
        // id = identity - same as writing (right) => right
        'id': this.id.value.fold((l) => l, id).toString(),
        'title': title.value.fold((l) => l, id),
        'duration': duration.value.fold((l) => l, id).toString(),
        'albumId': albumId.value.fold((l) => l, id).toString(),
        'artistId': artistId.value.fold((l) => l, id).toString(),
        'previewURL': previewURL.value.fold((l) => l, id),
      };

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(duration.failureOrUnit)
        .andThen(albumId.failureOrUnit)
        .andThen(artistId.failureOrUnit)
        .andThen(previewURL.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  // from IValidatable
  @override
  bool isValid() =>
      this.id.isValid() &&
      title.isValid() &&
      duration.isValid() &&
      albumId.isValid() &&
      artistId.isValid() &&
      previewURL.isValid();

  @override
  String toString() {
    var str = 'Track(id: ${this.id.toString()}';
    str += ' title: ${title.toString()} duration: ${duration.toString()}';
    str += ' albumId: ${albumId.toString()} artistId: ${artistId.toString()}';
    str += ' previewURL: ${previewURL.toString()})';
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
