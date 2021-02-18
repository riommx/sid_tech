import 'package:meta/meta.dart';
//
import '../core/entity/entity_factory.dart';
import '../core/vo/vos.dart';
import 'artist.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
class ArtistFactory implements EntityFactory {
  //
  // from EntityFactory
  @override
  Artist create({@required int id, @required String name}) => Artist(
        id: VOs.id(id),
        name: VOs.name(name),
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
// *  v 2.0
// ******************************************************************
