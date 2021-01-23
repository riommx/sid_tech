import 'package:meta/meta.dart';
//
import 'package:sid_tech/core/entity_factory.dart';
import 'package:sid_tech/domain/track_files.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

class TrackFilesFactory implements EntityFactory {
  //
  @override
  TrackFiles create({@required VOInt id, @required List<VOString> files}) =>
      TrackFiles(id, files);

  @override
  TrackFiles createFromMap({@required Map map}) => TrackFiles(
        map['id'],
        map['files'],
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
