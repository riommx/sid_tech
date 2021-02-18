//import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:kt_dart/kt.dart';
//
import '../core/entity/entity_factory.dart';
import '../core/vo/vos.dart';
import 'playlist.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class PlaylistFactory implements EntityFactory {
  //
  @override
  Playlist create(
          {@required int id,
          @required String name,
          @required KtList<int> tracks}) =>
      Playlist(id: VOs.id(id), name: VOs.name(name), tracks: VOs.ids(tracks));
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
