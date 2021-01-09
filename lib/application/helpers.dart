import 'package:meta/meta.dart';
import 'dart:io';
import 'dart:convert' as convert;

// ============================================================================
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
  // RETURN
  return map;
}

Future<bool> writeMap({@required String path, @required Map map}) async {
  //
  var file = await File(path);
  var content = convert.jsonEncode(map);
  //
  var shoudBeFile = await file.writeAsString(content);
  // RETURN
  return await shoudBeFile.exists() ? true : false;
}

String removeIvalidChars(String string) {
  var newString = string.length > 150 ? string.substring(0, 100) : string;
  // RETURN
  return newString.replaceAll(RegExp(r'["*/:?|\\<>]'), '_');
}
