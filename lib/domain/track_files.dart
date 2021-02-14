//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
//
import 'package:sid_tech/core/entity.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';
import 'package:sid_tech/core/value_failure.dart';

part 'track_files.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class TrackFiles extends Entity with _$TrackFiles {
  //
  const TrackFiles._();
  //
  const factory TrackFiles({
    @required VOInt id,
    @required List<VOString> files,
  }) = _TrackFiles;

  // from Entity
  @override
  Map toMap() => {
        // id = identity - same as writing (right) => right
        'id': this.id.value.fold((l) => l, id).toString(),
        'files': _filesToList(),
      };

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption => this
      .id
      .failureOrUnit
      .andThen(
        files
            .cast()
            .map((file) => file.failureOrUnit)
            .where((e) => e.isLeft())
            .first(orElse: (_) => none())
            .fold(() => right(unit), (f) => left(f)),
      )
      .fold((f) => some(f), (_) => none());

  // from IValidatable
  @override
  bool isValid() {
    var valid = this.id.isValid();
    for (var file in files) {
      valid = valid && file.isValid();
    }
    return valid;
  }

  // for toMap()
  List _filesToList() {
    var list = [];
    files.forEach((f) => list.add(f.value.fold((l) => l, id)));
    return list;
  }

  @override
  String toString() =>
      'TrackFiles(id: ${this.id.toString()} files: ${files.toString()})';
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
