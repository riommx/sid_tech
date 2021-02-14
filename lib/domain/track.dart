//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

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

  // implements IValidatable
  @override
  bool isValid() =>
      this.id.isValid() &&
      title.isValid() &&
      duration.isValid() &&
      albumId.isValid() &&
      artistId.isValid() &&
      previewURL.isValid();

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

  @override
  String toString() =>
      'Track(id: ${this.id.toString()} title: ${title.toString()} duration: ${duration.toString()} albumId: ${albumId.toString()} artistId: ${artistId.toString()} previewURL: ${previewURL.toString()})';

  void printInfo() {
    print('-------------------------------------------------------');
    print(
        '${title.value} (${this.id.value}) - ${duration.value} seconds from ${albumId.value} by ${artistId.value} on ${previewURL.value}');
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
// *  v 1.4
// ******************************************************************
