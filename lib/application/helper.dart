import 'package:meta/meta.dart';
import 'dart:io';
import 'dart:convert' as convert;

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class Helper {
  // ===========================================================================
  static Future<Map> readMap({@required String path}) async {
    // Guard Clause <=======
    if (await File(path).exists() == false) return {};
    //
    var contents = await File(path).readAsString();
    // Guard Clause <======
    if (contents.isEmpty) return {};
    //
    // RETURN <<<<<<<<<<<<<
    return intKeysMap(map: convert.jsonDecode(contents));
  }

  // ===========================================================================
  static Map intKeysMap({@required Map map}) {
    var newMap = {};
    map.forEach(
        (key, value) => newMap.putIfAbsent(int.parse(key), () => value));
    return newMap;
  }

  // ===========================================================================
  static Map stringKeysMap({@required Map map}) {
    var newMap = {};
    map.forEach(
        (key, value) => newMap.putIfAbsent(key.toString(), () => value));
    return newMap;
  }

  // ===========================================================================
  static Future<bool> writeMap(
      {@required String path, @required Map map}) async {
    //
    var content = convert.jsonEncode(stringKeysMap(map: map));
    //
    var file = await File(path).writeAsString(content);
    //
    // RETURN <<<<<<<<<<<<<
    return await file.exists() ? true : false;
  }

  // ===========================================================================
  static Future<List> listPathContent(
      {String pathFrom, bool recursive = false}) async {
    //
    var content = await Directory(pathFrom).listSync(recursive: recursive);
    var list = [];
    content.forEach((element) {
      if (element is File) {
        list.add(fullPathFromFileSystemEntity(element.toString()));
      }
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return list;
  }

  // ===========================================================================
  static String fullPathFromFileSystemEntity(String path) =>
      path.substring(path.indexOf('\'') + 1, path.length - 1);

  // ===========================================================================
  static String removeIvalidChars(String string) {
    // TODO: Why is that
    var newString = string.length > 100 ? string.substring(0, 100) : string;
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return newString.replaceAll(RegExp(r'["*/:?|\\<>]'), '_');
  }

  // ===========================================================================
  static String pathFromFilePath({@required String filePath}) =>
      filePath.substring(0, filePath.lastIndexOf('\\'));

  // ===========================================================================
  static String fileFromFilePath({@required String filePath}) =>
      filePath.substring(filePath.lastIndexOf('\\') + 1);

  // ===========================================================================
  static String extFromFilePath({@required String filePath}) =>
      filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();

  // ===========================================================================
  static String kbpsFromFilePath({@required String filePath}) =>
      filePath.contains('128kbps') || filePath.contains('320kbps')
          ? filePath.substring(
              filePath.lastIndexOf('kbps') - 3, filePath.lastIndexOf('kbps'))
          : '';

  // ===========================================================================
  static int idFromFilePath({@required String filePath}) =>
      int.tryParse(filePath.substring(
          filePath.lastIndexOf(']') + 2, filePath.lastIndexOf('-') - 1));

  // ===========================================================================
  static String folderPreview({String name}) {
    final foldersPreview = [
      '_0123456789ab',
      'cd',
      'efg',
      'hijkl',
      'mno',
      'pqr',
      'suvxywz',
      't'
    ];
    var firstChar = name.substring(0, 1).toLowerCase();
    var folder = 'special';
    foldersPreview.forEach((element) {
      if (element.contains(firstChar)) folder = element;
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return folder;
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
// *  ┊┊┊┊╭━━━━━━━╯┈┈   --->  May the source be with you!  <---
// *  v 1.5
// ******************************************************************
