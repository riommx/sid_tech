//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

part 'artist.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class Artist extends Entity with _$Artist {
  const Artist._();

  const factory Artist({
    @required VOInt id,
    @required VOString name,
  }) = _Artist;

  // implements IValidatable
  @override
  bool isValid() => this.id.isValid() && name.isValid();

  // String get pic => '${id.value}.jpg';

  // String get urlPic =>
  //     'https://api.deezer.com/artist/${id.value}/image?size=xl';

  @override
  Map toMap() => {
        'id': this.id.value.fold((l) => l, id).toString(),
        'name': name.value.fold((l) => l, id),
      };

  @override
  String toString() =>
      'Artist(id: ${this.id.toString()} name: ${name.toString()})';

  void printInfo() {
    print('-------------------------------------------------------');
    print('${name.value} (${this.id.value})');
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
