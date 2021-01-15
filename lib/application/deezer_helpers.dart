import 'dart:io';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sid_tech/application/helpers.dart';
import 'package:sid_tech/application/paths.dart';

// https://api.deezer.com/user/2668644462/playlists
// https://api.deezer.com/playlist/5901083884/tracks

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
  //
  // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
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
    path = Paths.WHAT['pictures'];
  } else {
    what = 'album';
    keys = albums.keys;
    path = Paths.WHAT['covers'];
  }
  await Future.forEach(keys, (id) async {
    //
    var filename;
    if (albums.isEmpty) {
      filename = '${removeIvalidChars(artists[id].name.value)} - ${id}.jpg';
    } else {
      var artist = artists[albums[id].artistId.value];
      var title = removeIvalidChars(albums[id].title.value);
      filename =
          '${removeIvalidChars(artist.name.value)} [${artist.id.value}] - ${title} [${id}].jpg';
    }
    var file = '${path}${filename}';
    var url = 'https://api.deezer.com/${what}/${id}/image?size=xl';
    if (await download(path: file, url: url)) {
      downloaded.add(file);
    }
  });
  //
  // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
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
  //
  // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
  return dowloaded;
}

// =====================================================================
Map fromDeezerTrackMap({@required Map track, @required String kind}) {
  var map;
  switch (kind) {
    case 'artists':
      map = {
        'id': track['artist']['id'].toString(),
        'name': track['artist']['name']
      };
      break;
    case 'albums':
      map = {
        'id': track['album']['id'].toString(),
        'title': track['album']['title'],
        'releaseDate': '1974-05-09',
        'upc': '0',
        'artistId': track['artist']['id'].toString()
      };
      break;
    case 'tracks':
      map = {
        'id': track['id'].toString(),
        'title': track['title'],
        'duration': track['duration'].toString(),
        'albumId': track['album']['id'].toString(),
        'artistId': track['artist']['id'].toString(),
        'previewURL': track['preview']
      };
  }
  //
  // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
  return map;
}