import 'package:sid_tech/core/vo_num.dart';
import 'package:sid_tech/core/vo_string.dart';

// TODO: FORMATAR TIPOS
abstract class VOs {
  static VOString name(String value) => VOString(value: value);

  static VOString title(String value) => VOString(value: value);

  static VONum id(int value) => VONum(value: value);

  static VONum upc(int value) => VONum(value: value);

  static VOString date(String value) => VOString(value: value, dateTime: true);

  static VONum seconds(int value) => VONum(value: value, minValue: 1);

  // TODO: URL regex
  static VOString url(String value) => VOString(value: value);

  // TODO: TrackFile regex
  static VOString trackFile(String value) => VOString(value: value);

  static List<VOString> files(List values) {
    var list = <VOString>[];
    values.forEach((e) => list.add(trackFile(e)));
    return list;
  }

  static List<VONum> tracks(List values) {
    var list = <VONum>[];
    values.forEach((e) => list.add(id(e)));
    return list;
  }
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
