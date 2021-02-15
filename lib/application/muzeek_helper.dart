import 'package:meta/meta.dart';
import 'package:sid_tech/application/deezer_helper.dart';
import 'package:sid_tech/application/paths.dart';
//
import 'package:sid_tech/domain/muzeek_factory.dart';
import 'helper.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class MuzeekHelper {
  // ============================================================================
  static Future<Map> load({@required Map what}) async {
    //
    var map = {};
    //
    var contentMap = await Helper.readMap(path: what['path']);
    //
    contentMap.forEach((key, value) {
      //
      var entity = Muz.fromMap(map: value, type: what['type']);
      //
      map.putIfAbsent(key, () => entity);
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return map;
  }

  // ============================================================================
  static Future<Map> scanTrackFiles(
      {String pathScan, bool recursive = false}) async {
    //
    // LOG INI ===================
    print('Start SCAN files at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    var nfiles = 0;
    var nTracks = 0;
    // LOG FIM ===================
    //
    final tracks = {}; //<int, List<String>>{};
    final notDeezer = <String>[];
    final other = <String>[];
    final lrc = <String>[];

    var files =
        await Helper.listPathContent(pathFrom: pathScan, recursive: recursive);

    files.forEach((file) {
      //
      // LOG INI ===================
      if (subTotal == 500) {
        subTotal = 0;
        print(
            '$total files at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      subTotal++;
      total++;
      // LOG FIM ===================
      //
      switch (Helper.extFromFilePath(filePath: file).toLowerCase()) {
        // +++++++++++++
        case 'mp3':
          if (Helper.kbpsFromFilePath(filePath: file) == '') {
            notDeezer.add(file);
            break;
          }
          //
          // LOG ===================
          nfiles++;
          //
          var id = Helper.idFromFilePath(filePath: file);
          if (tracks.containsKey(id)) {
            tracks[id]['files'].add(file);
          } else {
            // LOG ===================
            nTracks++;
            //
            tracks.putIfAbsent(
                id,
                () => {
                      'id': id.toString(),
                      'files': [file]
                    });
          }
          break;
        // +++++++++++++
        case 'lrc':
          lrc.add(file);
          break;
        // +++++++++++++
        default:
          other.add(file);
      }
    });
    //
    // LOG INI ===================
    stopW.stop();
    print('End SCAN files at ${DateTime.now()} - elapsed: ${stopW.elapsed}');
    print('Scanned ${files.length} files');
    print('${nfiles} files of ${tracks.length} tracks / ${nTracks} new add');
    print('LRC - ${lrc.length} ====================');
    print('NON DEEZER - ${notDeezer.length} ==============================');
    print('OTHER - ${other.length} ===============================');
    // LOG FIM ===================
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return {
      'kind': 'trackFiles',
      'values': tracks,
      'notDeezer': notDeezer,
      'lrc': lrc,
      'other': other,
    };
  }

  // ============================================================================
  static Future<Map> scanPlaylists() async {
    //
    // LOG ===================
    print('start Scan Playlists: ${DateTime.now()}');
    //
    var playlists = {};
    var index = 0;
    var deezerPlaylists;
    do {
      deezerPlaylists = await DeezerHelper.deezer_API(
          what: 'user',
          id: '2668644462',
          arguments: '/playlists?index=${index}');
      //
      for (var pl in deezerPlaylists['data']) {
        var id = pl['id'];
        var name = pl['title'];
        playlists.putIfAbsent(
            id, () => {'id': id.toString(), 'name': name, 'tracks': []});
      }
      index += 25;
    } while (deezerPlaylists.containsKey('next'));

    //
    // LOG ===================
    print('end of Scan Playlists: ${DateTime.now()} - ${playlists.length} pls');
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return {
      'kind': 'playlists',
      'values': playlists,
    };
  }

  // TODO: Parei AQUI!!!
  // ============================================================================
  static Future<Map> scanFromPlaylists({@required Map playlists}) async {
    //
    // LOG ===================
    print('start Scan From Playlists: ${DateTime.now()}');

    var returnMap = {
      'tracks': {},
      'artists': {},
      'albums': {},
      'playlists': playlists,
    };

    await Future.forEach(playlists.keys, (playId) async {
      var playlist =
          await DeezerHelper.deezer_API(what: 'playlist', id: playId);
      //
      // LOG ===================
      print(playlists[playId]);
      //
      for (var trackMap in playlist['tracks']['data']) {
        //
        var id = trackMap['id'].toString();
        returnMap['playlists'][playId]['tracks'].add(id);

        if (!returnMap['tracks'].containsKey(id)) {
          var track =
              DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'tracks');
          returnMap['tracks'].putIfAbsent(id, () => track);
          var album =
              DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'albums');
          returnMap['albums'].putIfAbsent(album['id'], () => album);
          var artist =
              DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'artists');
          returnMap['artists'].putIfAbsent(artist['id'], () => artist);
        }
      }
      //
      // LOG ===================
      print(returnMap['playlists'][playId]);
      //
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return {
      'tracks': {'kind': 'tracks', 'values': returnMap['tracks']},
      'albums': {'kind': 'albums', 'values': returnMap['albums']},
      'artists': {'kind': 'artists', 'values': returnMap['artists']},
      'playlists': {'kind': 'playlists', 'values': returnMap['playlists']},
    };
  }

  // ============================================================================
  static Future<Map> scanFromTrackFiles(
      {@required Map trackFiles, @required Map tracks}) async {
    //
    // LOG ===================
    print('start Scan From TrackFiles: ${DateTime.now()}');
    var newT = 0;
    //
    var returnMap = {
      'tracks': {},
      'artists': {},
      'albums': {},
    };

    //
    await Future.forEach(trackFiles.keys, (trackId) async {
      print(trackId);
      if (!tracks.containsKey(trackId)) {
        var trackMap = await DeezerHelper.deezer_API(
            what: 'track', id: trackId.toString());
        //
        // LOG ===================
        newT++;
        print('===========================================================');
        print(newT);
        //
        var id = trackId.toString();
        var track =
            DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'tracks');
        returnMap['tracks'].putIfAbsent(id, () => track);
        var album =
            DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'albums');
        returnMap['albums'].putIfAbsent(album['id'], () => album);
        var artist =
            DeezerHelper.fromDeezerTrackMap(track: trackMap, kind: 'artists');
        returnMap['artists'].putIfAbsent(artist['id'], () => artist);
      }
    });
    //
    // LOG ===================
    print('end of Scan From TrackFiles: ${DateTime.now()}');
    print('new tracks $newT');
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return {
      'tracks': {'kind': 'tracks', 'values': returnMap['tracks']},
      'albums': {'kind': 'albums', 'values': returnMap['albums']},
      'artists': {'kind': 'artists', 'values': returnMap['artists']},
    };
  }

  // ============================================================================
  static Future<List> scanPics({
    @required Map artists,
    Map albums = const {},
  }) async {
    //
    // LOG ===================
    print('start Scan Pics: ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    //
    var pics =
        await DeezerHelper.scanDeezerPics(artists: artists, albums: albums);
    //
    // LOG ===================
    stopW.stop();
    print('end of Scan Pics: ${DateTime.now()} - ${stopW.elapsed.toString()}');
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return pics;
  }

  // ============================================================================
  static Future<List> scanDeezerPreviews({
    @required Map tracks,
    @required Map artists,
  }) async {
    //
    // LOG ===================
    print('Start scan Previews at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    //
    var downloaded = [];
    //
    await Future.forEach(tracks.values, (track) async {
      //
      // LOG ===================
      if (subTotal == 500) {
        subTotal = 0;
        print(total);
        print(
            '$total at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      subTotal++;
      total++;
      //
      var url = track.previewURL.value;
      if (url != '') {
        var artist = artists[track.artistId.value];
        var name = Helper.removeIvalidChars(artist.name.value);
        var title = Helper.removeIvalidChars(track.title.value);
        var folder = Helper.folderPreview(name: name);
        var filename =
            '${Paths.WHAT['previews']}${folder}\\$name - $title - ${track.id.value}.mp3';
        var success = await DeezerHelper.download(url: url, path: filename);
        //
        if (success) downloaded.add(filename);
      }
    });
    //
    // LOG ===================
    stopW.stop();
    print(
        'End of scan previews at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return downloaded;
  }

  // ============================================================================
  static Future<Map> scanReleaseDate({@required Map albums}) async {
    //
    // LOG ===================
    print('start Scan Release Date: ${DateTime.now()}');
    var total = albums.length;

    await Future.forEach(albums.keys, (id) async {
      var album = await DeezerHelper.deezer_API(what: 'album', id: id);
      //
      var upc = album['upc'] ?? '0';
      upc = int.tryParse(upc) == null ? '0' : upc;
      albums[id]['upc'] = upc;
      //
      var releaseDate = album['release_date'] ?? '1974-05-09';
      albums[id]['releaseDate'] = releaseDate;
      //
      print(albums[id]);
      print('faltam ${total--}');
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return {'kind': 'albums', 'values': albums};
  }

  // ============================================================================
  static Future<bool> save({@required Map maps}) async {
    var success = false;
    //
    await Future.forEach(maps.keys, (kind) async {
      var map = {};
      maps[kind].forEach((id, entity) {
        map.putIfAbsent(id, () => entity.toMap());
      });
      success = await Helper.writeMap(path: Paths.WHAT[kind], map: map);
    });
    //
    // RETURN <<<<<<<<<<<<<<<<<<<<<<<<
    return success;
  }
}
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//Track
// void printInfo() {
//   print('-------------------------------------------------------');
//   print(
//       '${title.value} (${this.id.value}) - ${duration.value} seconds from ${albumId.value} by ${artistId.value} on ${previewURL.value}');
// }

//TrackFiles
// void printInfo() {
//   print('-------------------------------------------------------');
//   print(this.id.value);
//   files.forEach((f) => print(f.value));
// }

// Artist
// String get pic => '${id.value}.jpg';

// String get urlPic =>
//     'https://api.deezer.com/artist/${id.value}/image?size=xl';

// void printInfo() {
//   print('-------------------------------------------------------');
//   print('${name.value} (${this.id.value})');
// }

// Album
// String get pic => '${this.id.value}.jpg';

// String get urlPic =>
//     'https://api.deezer.com/album/${this.id.value}/image?size=xl';

// void printInfo() {
//   print('-------------------------------------------------------');
//   print(
//       '${title.value} (${this.id.value}) from ${releaseDate.value} by ${artistId.value} upc ${upc.value}');
// }

// Playlist
// void printInfo() {
//   print('-------------------------------------------------------');
//   print('${name.value} (${this.id.value})');
//   print('tracks: ${tracks.toString()}');
// }

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/*import 'package:sid_tech/application/paths.dart';

// ============================================================================
Future<Map<dynamic, dynamic>> read({String what, bool isList = false}) async {
  //
  final path = Paths.WHAT[what];
  var map = {};
  var nList = 0;
  var content = await readMap(path);

  content.forEach((key, value) {
    var mapItem;
    if (isList) {
      var list = [];
      value.forEach((element) {
        list.add(fromMap(map: element));
        nList++;
      });
      mapItem = list;
    } else {
      mapItem = fromMap(map: value);
    }
    map.putIfAbsent(int.parse(key), () => mapItem);
  });
  //  for log
  print('$what => ${map.length}');
  if (isList) {
    print('$what items => $nList');
  }
  // RETURN
  return map;
}


// FILE
// ============================================================================


// ============================================================================


// ============================================================================
Future<bool> writeMap(Map map, String path) async {
  //
  var file = await File(path);
  var content = convert.jsonEncode(map);
  var shoudBeFile = await file.writeAsString(content);
  // RETURN
  return await shoudBeFile.exists() ? true : false;
}

// ============================================================================
Future<List> notDeezer({List paths}) async {
  // for log
  // print('==================================');
  var erros = [];
  for (var path in paths) {
    var fileTrack = FilePath.create(filePath: path);
    //FileName.createFromFullPath(path: path.toString());
    var filename = 'E:\\__DEEZ\\notDeezer\\${fileTrack.toString()}';
    try {
      var input = File(path.toString());
      var output = File(filename);
      if (!(output.existsSync())) {
        print(input.copySync(filename));
      }
    } catch (e) {
      erros.add(path);
      continue;
    }
  }
  // RETURN
  return erros;
}

// ============================================================================
Future<List> ifExists(List paths) async {
  //
  var list = [];
  await Future.forEach(paths, (path) async {
    var file = File(path);
    if (!(await file.exists())) {
      list.add(path);
    }
  });
  // RETURN
  return list;
}

// ============================================================================
dynamic fromMap({dynamic map}) {
  return map;
}

Map treacksFromMap({Map map}) {
  final trackMap = {};
  trackMap.putIfAbsent('track', () => Track.fromMap(map: map['track']));
  var filesMap = <FilePath>{};
  for (var file in map['files']) {
    filesMap.add(FilePath.create(filePath: file.toString()));
  }
  trackMap.putIfAbsent('files', () => filesMap);
  var idsMap = <Id>{};
  for (var id in map['playlists']) {
    idsMap.add(Id.create(id: int.parse(id.toString())));
  }
  trackMap.putIfAbsent('playlists', () => idsMap);
  // RETURN
  return trackMap;
}

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







*/
