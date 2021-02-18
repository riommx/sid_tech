//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/kt.dart';
//
import '../core/entity/entity_factory.dart';
import '../core/vo/vos.dart';
import 'track_files.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class TrackFilesFactory implements EntityFactory {
  //
  // from EntityFactory
  @override
  TrackFiles create({
    @required int id,
    @required KtList<String> files,
  }) =>
      TrackFiles(id: VOs.id(id), files: VOs.files(files));
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
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXI >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━━╯┈┈    --->  May the source be with you!  <---
// *  v 2.0
// ******************************************************************
