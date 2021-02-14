//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/value_failure.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

part 'album.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Album extends Entity with _$Album {
  const Album._();

  const factory Album({
    @required VOInt id,
    @required VOString title,
    @required VOString releaseDate,
    @required VOInt upc,
    @required VOInt artistId,
  }) = _Album;

  // implements IValidatable
  @override
  bool isValid() =>
      this.id.isValid() &&
      title.isValid() &&
      releaseDate.isValid() &&
      upc.isValid() &&
      artistId.isValid();

  // String get pic => '${this.id.value}.jpg';

  // String get urlPic =>
  //     'https://api.deezer.com/album/${this.id.value}/image?size=xl';

  @override
  Map toMap() => {
        // id = identity - same as writing (right) => right
        'id': this.id.value.fold((l) => l, id).toString(),
        'title': title.value.fold((l) => l, id),
        'releaseDate': releaseDate.value.fold((l) => l, id),
        'upc': upc.value.fold((l) => l, id).toString(),
        'artistId': artistId.value.fold((l) => l, id).toString(),
      };

  @override
  String toString() =>
      'Album(id: ${this.id.value} title: ${title.value} releaseDate: ${releaseDate.value} upc: ${upc.value} artistId: ${artistId.value})';

  void printInfo() {
    print('-------------------------------------------------------');
    print(
        '${title.value} (${this.id.value}) from ${releaseDate.value} by ${artistId.value} upc ${upc.value}');
  }
}

extension AlbumX on Album {
  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(releaseDate.failureOrUnit)
        .andThen(upc.failureOrUnit)
        .andThen(artistId.failureOrUnit)
        .fold((f) => some(f), (_) => none());
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
