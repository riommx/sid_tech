import 'package:kt_dart/kt.dart';
//
import 'vo_string.dart';
import 'vo_int.dart';
import 'vo_double.dart';
import 'vo_kt_list.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class VOs {
  // MUZEEK =======

  // Album, Artist,  Playlist, Track,  TrackFiles
  static VOInt id(int value) => VOInt(value: value);

  // Artist, Playlist,
  static VOString name(String value) => VOString(value: value);

  // Album, Track,
  static VOString title(String value) => VOString(value: value);

  // Album
  static VOInt upc(int value) => VOInt(value: value);

  // Album
  static VOString date(String value) => VOString(value: value, dateTime: true);

  // Track
  static VOInt seconds(int value) => VOInt(value: value, minValue: 1);

  // Track
  // TODO: URL regex
  static VOString url(String value) => VOString(value: value);

  // TrackFiles
  // TODO: TrackFile regex
  static VOString trackFile(String value) => VOString(value: value);

  // TrackFiles
  static VOKtList<VOString> files(KtList<String> values) {
    var ktlist = KtMutableList<VOString>.empty();
    values.forEach((file) => ktlist.add(trackFile(file)));
    return VOKtList(value: ktlist.toList());
  }

  // Playlist
  static VOKtList<VOInt> ids(KtList<int> values) {
    var ktlist = KtMutableList<VOInt>.empty();
    values.forEach((value) => ktlist.add(id(value)));
    return VOKtList(value: ktlist.toList());
  }

  // TESTES ===================
  static VOInt idInt(int value) => VOInt(
      value: value,
      minValue: 2,
      otherValidation: (var v) => v.isEven,
      otherValidationMessage: 'Tem que ser PAR');

  static VODouble idDouble(double value) =>
      VODouble(value: value, minValue: 2.5);

  static VOString name2(String value) => VOString(
      value: value,
      otherValidation: (var v) => v != 'Sid',
      otherValidationMessage: 'Não pode ser Sid');
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
