import 'dart:io';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sid_tech/application/helper.dart';
import 'package:sid_tech/application/paths.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################

abstract class DeezerHelper {
  // https://api.deezer.com/user/2668644462/playlists
  // https://api.deezer.com/playlist/5901083884/tracks

  // ===========================================================================
  static Future<Map> deezer_API(
      {String what, String id, String arguments = ''}) async {
    //
    // Await the http get response, then decode the json-formatted response.
    var response =
        await http.get('https://api.deezer.com/$what/${id}${arguments}');
    //
    // Guard Clause <=====
    if (response.statusCode != 200) {
      return {'failure': 'Request failed with status: ${response.statusCode}'};
    }
    //
    // RETURN <<<<<<<<<<<<
    return convert.jsonDecode(response.body);
  }

  // ===========================================================================
  static Future<List> scanDeezerPics(
      {Map artists, Map albums = const {}}) async {
    //
    var what = albums.isEmpty ? 'artist' : 'album';
    var keys = albums.isEmpty ? artists.keys : albums.keys;
    var path = albums.isEmpty ? Paths.WHAT['pictures'] : Paths.WHAT['covers'];
    //
    var downloaded = [];

    await Future.forEach(keys, (id) async {
      //
      var artistId = what == 'artist' ? id : albums[id].artistId.getOrCrash();
      var artistName =
          Helper.removeIvalidChars(artists[artistId].name.getOrCrash());

      var title = what == 'album'
          ? Helper.removeIvalidChars(albums[id].getOrCrash())
          : '';
      var filename = what == 'artist'
          ? '${artistName} - ${artistId}.jpg'
          : '${artistName} [${artistId}] - ${title} [${id}].jpg';

      var file = '${path}${filename}';
      var url = 'https://api.deezer.com/${what}/${id}/image?size=xl';
      if (await download(path: file, url: url)) downloaded.add(file);
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return downloaded;
  }

  // ===========================================================================
  static Future<bool> download({String url, String path}) async {
    //
    // Guard Clause <=====
    if (File(path).existsSync()) return false;
    //
    var _downloadData = <int>[];
    await HttpClient()
        .getUrl(Uri.parse(url))
        .then((HttpClientRequest request) => request.close())
        .then((HttpClientResponse response) {
      response.listen((d) => _downloadData.addAll(d), onDone: () async {
        await File(path).writeAsBytes(_downloadData);
      });
    });
    //
    // RETURN <<<<<<<<<<<
    return true;
  }

  // ===========================================================================
  static Map fromDeezerTrackMap({@required Map track, @required String kind}) {
    switch (kind) {
      case 'artists':
        return {
          'id': track['artist']['id'].toString(),
          'name': track['artist']['name']
        };
      //
      case 'albums':
        return {
          'id': track['album']['id'].toString(),
          'title': track['album']['title'],
          'releaseDate': '1974-05-09',
          'upc': '0',
          'artistId': track['artist']['id'].toString()
        };
      //
      case 'tracks':
        return {
          'id': track['id'].toString(),
          'title': track['title'],
          'duration': track['duration'].toString(),
          'albumId': track['album']['id'].toString(),
          'artistId': track['artist']['id'].toString(),
          'previewURL': track['preview']
        };
    }
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
