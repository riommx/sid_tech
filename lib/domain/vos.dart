import 'package:sid_tech/core/vo_int.dart';
import 'package:sid_tech/core/vo_int_factory.dart';
import 'package:sid_tech/core/vo_string.dart';
import 'package:sid_tech/core/vo_string_factory.dart';

// TODO: FORMATAR TIPOS
abstract class VOs {
  static VOString name(String value) => VOStringFactory().create(value: value);

  static VOString title(String value) => VOStringFactory().create(value: value);

  static VOInt id(int value) => VOIntFactory().create(value: value);

  static VOString date(String value) =>
      VOStringFactory().create(value: value, dateTime: true);

  static VOInt seconds(int value) =>
      VOIntFactory().create(value: value, minValue: 1);

  // TODO: URL regex
  static VOString url(String value) => VOStringFactory().create(value: value);

  // TODO: TrackFile regex
  static VOString trackFile(String value) =>
      VOStringFactory().create(value: value);

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
