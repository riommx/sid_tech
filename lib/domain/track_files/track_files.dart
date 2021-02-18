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

part 'track_files.freezed.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
@freezed
abstract class TrackFiles extends Entity implements _$TrackFiles {
  //
  const TrackFiles._();
  //
  const factory TrackFiles({
    @required VOInt id,
    @required VOKtList<VOString> files,
  }) = _TrackFiles;

  // from Entity
  @override
  Option<ValueFailure<dynamic>> get failureOption => this
      .id
      .failureOrUnit
      .andThen(files.failureOrUnit)
      .andThen(
        files
            .getOrCrash()
            .map((file) => file.failureOrUnit)
            .filter((e) => e.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((f) => left(f), (r) => right(unit)),
      )
      .fold((f) => some(f), (_) => none());

  // from IValidatable
  @override
  bool isValid() {
    var valid = this.id.isValid();
    valid = valid && files.isValid();
    if (valid) {
      files.getOrCrash().forEach((file) => valid = valid && file.isValid());
    }
    return valid;
  }

  //
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
// *  v 2.0
// ******************************************************************
