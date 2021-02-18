import 'package:meta/meta.dart';
//
import '../core/entity/entity_factory.dart';
import '../core/vo/vos.dart';
import 'album.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class AlbumFactory implements EntityFactory {
  //
  @override
  Album create({
    @required int id,
    @required String title,
    @required String releaseDate,
    @required int upc,
    @required int artistId,
  }) =>
      Album(
        id: VOs.id(id),
        title: VOs.title(title),
        releaseDate: VOs.date(releaseDate),
        upc: VOs.upc(upc),
        artistId: VOs.id(artistId),
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
