import 'package:meta/meta.dart';
import 'dart:io';
import 'dart:convert' as convert;

// FILE   ======================================================================
Future<Map> readMap({@required String path}) async {
  //
  var file = File(path);
  var map;

  if (await file.exists()) {
    var contents = await File(path).readAsString();
    map = await convert.jsonDecode(contents);
  } else {
    map = {};
  }
  var intKeysMap = {};
  if (map != {}) {
    map.forEach(
        (key, value) => intKeysMap.putIfAbsent(int.parse(key), () => value));
  }
  // RETURN
  return intKeysMap;
}

Future<bool> writeMap({@required String path, @required Map map}) async {
  //
  var newMap = {};
  map.forEach((key, value) => newMap.putIfAbsent(key.toString(), () => value));
  var content = convert.jsonEncode(newMap);
  //print(content);
  //
  var file = await File(path);
  var shoudBeFile = await file.writeAsString(content);
  // RETURN
  return await shoudBeFile.exists() ? true : false;
}

Future<List> listPathContent({String pathFrom, bool recursive = false}) async {
  //
  var dir = Directory(pathFrom);
  var content = await dir.listSync(recursive: recursive);
  var list = <String>[];
  content.forEach((element) {
    if (element is File) {
      var filepath = fullPathFromFileSystemEntity(element.toString());
      list.add(filepath);
    }
  });
  // RETURN
  return list;
}

// STRING ======================================================================
String fullPathFromFileSystemEntity(String path) =>
    path.substring(path.indexOf('\'') + 1, path.length - 1);

String removeIvalidChars(String string) {
  var newString = string.length > 150 ? string.substring(0, 100) : string;
  // RETURN
  return newString.replaceAll(RegExp(r'["*/:?|\\<>]'), '_');
}

// File Path String =========

String pathFromFilePath({@required String filePath}) =>
    filePath.substring(0, filePath.lastIndexOf('\\'));

String fileFromFilePath({@required String filePath}) =>
    filePath.substring(filePath.lastIndexOf('\\') + 1);

String extFromFilePath({@required String filePath}) =>
    filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();

String kbpsFromFilePath({@required String filePath}) =>
    filePath.contains('128kbps') || filePath.contains('320kbps')
        ? filePath.substring(
            filePath.lastIndexOf('kbps') - 3, filePath.lastIndexOf('kbps'))
        : '';

int idFromFilePath({@required String filePath}) => int.tryParse(filePath
    .substring(filePath.lastIndexOf(']') + 2, filePath.lastIndexOf('-') - 1));
