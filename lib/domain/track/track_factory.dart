import 'package:meta/meta.dart';
//
import '../core/entity/entity_factory.dart';
import '../core/vo/vos.dart';
import 'track.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class TrackFactory implements EntityFactory {
  //
  // from EntityFactory
  @override
  Track create({
    @required int id,
    @required String title,
    @required int duration,
    @required int albumId,
    @required int artistId,
    @required String previewURL,
  }) =>
      Track(
        id: VOs.id(id),
        title: VOs.title(title),
        duration: VOs.seconds(duration),
        albumId: VOs.id(albumId),
        artistId: VOs.id(artistId),
        previewURL: VOs.url(previewURL),
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
// *  v 2.0
// ******************************************************************
