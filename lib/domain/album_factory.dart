import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/entity_factory.dart';
import 'package:sid_tech/domain/album.dart';
import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

class AlbumFactory implements EntityFactory {
  //
  @override
  Album create({
    @required VONum id,
    @required VOString title,
    @required VOString releaseDate,
    @required VONum upc,
    @required VONum artistId,
  }) =>
      Album(
        id,
        title,
        releaseDate,
        upc,
        artistId,
      );

  @override
  Album createFromMap({@required Map map}) => Album(
        map['id'],
        map['title'],
        map['releaseDate'],
        map['upc'],
        map['artistId'],
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
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// * v 1.0
// ******************************************************************
