import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/entity_factory.dart';
import 'package:sid_tech/domain/playlist.dart';
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class PlaylistFactory implements EntityFactory {
  //
  @override
  Playlist create(
          {@required VONum id,
          @required VOString name,
          @required List<VONum> tracks}) =>
      Playlist(id, name, tracks);

  @override
  Playlist createFromMap({@required Map map}) => Playlist(
        map['id'],
        map['name'],
        map['tracks'],
      );
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
// *  v 1.0
// ******************************************************************
