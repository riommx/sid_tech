import 'package:meta/meta.dart';
//
import 'package:sid_tech/domain/track.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class TrackFactory {
  //
  Track create({
    @required VOInt id,
    @required VOString title,
    @required VOInt duration,
    @required VOInt albumId,
    @required VOInt artistId,
    @required VOString previewURL,
  }) =>
      Track(
          id: id,
          title: title,
          duration: duration,
          albumId: albumId,
          artistId: artistId,
          previewURL: previewURL);

  Track createFromMap({@required Map map}) => Track(
        id: map['id'],
        title: map['title'],
        duration: map['duration'],
        albumId: map['albumId'],
        artistId: map['artistId'],
        previewURL: map['previewURL'],
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
// *  v 1.4
// ******************************************************************
