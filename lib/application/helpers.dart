import 'dart:io';
import 'dart:convert' as convert;

// ============================================================================
Future<Map> readMap(String path) async {
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

String removeIvalidChars(String string) {
  var newString = string.length > 150 ? string.substring(0, 100) : string;
  // RETURN
  return newString.replaceAll(RegExp(r'["*/:?|\\<>]'), '_');
}
