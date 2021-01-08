import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sid_tech/application/helpers.dart';

// DEEZER
// ============================================================================
Future<Map> deezer_API({String what, String id, String arguments = ''}) async {
  //
  var map;
  var url = 'https://api.deezer.com/$what/${id}${arguments}';
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    map = convert.jsonDecode(response.body);
  } else {
    map = {'failure': 'Request failed with status: ${response.statusCode}.'};
  }
  // RETURN
  return map;
}

// ============================================================================
Future<List> scanDeezerPics({Map artists, Map albums = const {}}) async {
  var downloaded = [];
  var keys;
  var path;
  var what;
  if (albums.isEmpty) {
    what = 'artist';
    keys = artists.keys;
    path = 'E:\\__DEEZ\\muzeek\\artists\\';
  } else {
    what = 'album';
    keys = albums.keys;
    path = 'E:\\__DEEZ\\muzeek\\covers\\';
  }
  await Future.forEach(keys, (id) async {
    //
    var filename;
    if (albums.isEmpty) {
      filename = '${removeIvalidChars(artists[id].name)} - ${id}.jpg';
    } else {
      var artist = artists[albums[id].artist];
      var title = removeIvalidChars(albums[id].title);
      filename =
          '${removeIvalidChars(artist.name)} [${artist.id}] - ${title} [${id}].jpg';
    }
    var file = '${path}${filename}';
    var url = 'https://api.deezer.com/${what}/${id}/image?size=xl';
    if (await download(path: file, url: url)) {
      downloaded.add(file);
    }
  });
  // RETURN
  return downloaded;
}

// ============================================================================
Future<bool> download({String url, String path}) async {
  //
  var dowloaded = false;
  var fileSave = File(path);
  if (!(fileSave.existsSync())) {
    var client = HttpClient();
    var _downloadData = <int>[];
    await client.getUrl(Uri.parse(url)).then((HttpClientRequest request) {
      return request.close();
    }).then((HttpClientResponse response) {
      response.listen((d) => _downloadData.addAll(d), onDone: () async {
        await fileSave.writeAsBytes(_downloadData);
      });
    });
    dowloaded = true;
  }
  // RETURN
  return dowloaded;
}
