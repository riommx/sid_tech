//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//
import '../core/entity/entity.dart';
import '../core/vo/vo_int.dart';
import '../core/vo/vo_string.dart';
import '../core/failures/value_failure.dart';

part 'track.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Track extends Entity implements _$Track {
  //
  const Track._();
  //
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
// *  v 2.0
// ******************************************************************
