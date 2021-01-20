import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/entity_factory.dart';
import 'package:sid_tech/domain/track.dart';
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class TrackFactory implements EntityFactory {
  //
  @override
  Track create({
    @required VONum id,
    @required VOString title,
    @required VONum duration,
    @required VONum albumId,
    @required VONum artistId,
    @required VOString previewURL,
  }) =>
      Track(
        id,
        title,
        duration,
        albumId,
        artistId,
        previewURL,
      );

  @override
  Track createFromMap({@required Map map}) => Track(
        map['id'],
        map['title'],
        map['duration'],
        map['albumId'],
        map['artistId'],
        map['previewURL'],
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
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ 2021 >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 1.0
// ******************************************************************
