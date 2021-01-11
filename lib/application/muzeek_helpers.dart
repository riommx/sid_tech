import 'package:meta/meta.dart';
import 'package:sid_tech/application/paths.dart';
//
import 'package:sid_tech/domain/muzeek_factory.dart';
import 'helpers.dart';

// ============================================================================
Future<Map> load({@required Map what}) async {
  var map = {};

  var contentMap = await readMap(path: what['path']);
  //
  contentMap.forEach((key, value) {
    //
    var entity = Muz.fromMap(map: value, type: what['type']);
    //
    map.putIfAbsent(key, () => entity);
  });

  return map;
}

// ============================================================================
Future<Map> scanTrackFiles({String pathScan, bool recursive = false}) async {
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
  final tracks = <int, List<String>>{};
  final notDeezer = <String>[];
  final other = <String>[];
  final lrc = <String>[];

  var files = await listPathContent(pathFrom: pathScan, recursive: recursive);

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
    var ext = extFromFilePath(filePath: file).toLowerCase();
    if (ext == 'mp3') {
      if (kbpsFromFilePath(filePath: file) != '') {
        //
        // LOG ===================
        nfiles++;
        //
        var id = idFromFilePath(filePath: file);
        if (tracks.containsKey(id)) {
          tracks[id].add(file);
        } else {
          // LOG ===================
          nTracks++;
          //
          tracks.putIfAbsent(id, () => [file]);
        }
        //
      } else {
        notDeezer.add(file);
      }
    } else {
      if (ext == 'lrc') {
        lrc.add(file);
      } else {
        other.add(file);
      }
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
    'trackFiles': tracks,
    'notDeezer': notDeezer,
    'lrc': lrc,
    'other': other,
  };
}

// ============================================================================
Future<bool> save({@required Map maps}) async {
  var success = false;
  //
  await Future.forEach(maps.keys, (kind) async {
    var map = {};
    maps[kind].forEach((id, entity) {
      map.putIfAbsent(id, () => entity.toMap());
    });
    success = await writeMap(path: Paths.WHAT[kind], map: map);
  });
  return success;
}

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
