import 'package:sid_tech/core/vo_double.dart';
import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_string.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class VOs {
  static VOString name(String value) => VOString(value: value);

  static VOString title(String value) => VOString(value: value);

  static VOInt id(int value) => VOInt(value: value);

  static VOInt upc(int value) => VOInt(value: value);

  static VOString date(String value) => VOString(value: value, dateTime: true);

  static VOInt seconds(int value) => VOInt(value: value, minValue: 1);

  // TODO: URL regex
  static VOString url(String value) => VOString(value: value);

  // TODO: TrackFile regex
  static VOString trackFile(String value) => VOString(value: value);

  static List<VOString> files(List values) {
    var list = <VOString>[];
    values.forEach((e) => list.add(trackFile(e)));
    return list;
  }

  static List<VOInt> tracks(List values) {
    var list = <VOInt>[];
    values.forEach((e) => list.add(id(e)));
    return list;
  }

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
// *  v 1.4
// ******************************************************************
