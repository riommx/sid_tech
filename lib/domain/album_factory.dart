import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/entity_factory.dart';
import 'package:sid_tech/domain/album.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

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
    @required VOInt id,
    @required VOString title,
    @required VOString releaseDate,
    @required VOInt upc,
    @required VOInt artistId,
  }) =>
      Album(
        id: id,
        title: title,
        releaseDate: releaseDate,
        upc: upc,
        artistId: artistId,
      );

  @override
  Album createFromMap({@required Map map}) => Album(
        id: map['id'],
        title: map['title'],
        releaseDate: map['releaseDate'],
        upc: map['upc'],
        artistId: map['artistId'],
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
