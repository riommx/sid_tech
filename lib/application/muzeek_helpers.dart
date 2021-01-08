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
Future<List> listPathContent({String pathFrom, bool recursive = false}) async {
  //
  var dir = Directory(pathFrom);
  var content = await dir.listSync(recursive: recursive);
  var list = <String>[];
  content.forEach(
      (element) => list.add(fullPathFromFileSystemEntity(element.toString())));
  // RETURN
  return list;
}

// ============================================================================
String fullPathFromFileSystemEntity(String path) =>
    // RETURN
    path.substring(path.indexOf('\'') + 1, path.length - 1);

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



String folderPreview({String name}) {
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
  // RETURN;
  return folder;
}



const PLAYLISTS = {
  "5704002342": "OPERA",
  "5901083884": "BR ROCK 1",
  "5901175204": "BR MPB 0",
  "5905131944": "REGGAE",
  "5905140004": "BR RS POP",
  "5905142644": "BR RS ROCK",
  "5905145364": "BR SAMBA",
  "5905150744": "TODAS 1000",
  "5918134644": "OK AC/DC_Aerosmith",
  "5918143284": "OK AustralianCrawl_SpyVsSpy_HoodooGurus",
  "5918242504": "OK DireStraits_MidnightOil_MenAtWork_",
  "5918298804": "OK BlackSabbath_DeepPurple_Ozzy",
  "5918623264": "OK Guns N'R e Blondie e Billy Idol e Bloodho.Gang",
  "5918637544": "OK Ramones e Dead K e Sex Pistols",
  "5918659244": "OK Nirvana e Pearl Jam e Soundg. e Foo Fighters",
  "5918710264": "OK Red Hot Chili Peppers e Sublime",
  "5918742004": "OK Pink Floyd e Yes",
  "5918856364": "OK The Who e T. Rex e Jethro Tull",
  "5918922104": "OK CatStev_BobDyl_NeilYou_Simon&Garfunk_CSNY",
  "5918939704": "OK Eric Clapton e Tom Petty",
  "5919214564": "OK Janis e Credence e Wishbone e Beach B e Elvis",
  "5919237904": "OK Klaatu e The Beatles",
  "5919643664": "OK ABBA_A-ha_FleetwoodMac",
  "5919651444": "OK INXS e e e",
  "5920052964": "OK Rush e Iron e Metallica e Megadeth e Ministry",
  "5920136024": "OK Hair e Tommy e JC Superstar e Bye Bird",
  "5921041804": "OLDIES",
  "5925408884": "OK Depeche_TheCure_NewOrder_JoyDivision",
  "5925416044": "OK Police e Smiths e D Bowie",
  "5925427884": "OK THeads,Cars,Pixies,Cult,Siouxsie,Oingo",
  "5932203484": "OK Clash_B.A.D._PattiSmith_Runaways_JoanJett_Heart",
  "5933150744": "OK Doors_",
  "5933815144": "OK U2_Queen",
  "5936853364": "OK Offspring_Rancid_ViolentFemmes",
  "5938407164": "OK Supertram_Fixx_",
  "5942378824": "BR MPB 1",
  "5943325664": "BR MPB 2",
  "5945282264": "BR SAMBA 1",
  "5947871204": "BR MPB 3",
  "5952140664": "OK LedZ_FrankZappa",
  "5967603464": "BR SAMBA 2",
  "5968180864": "00OK POP",
  "5968446384": "BR ROCK",
  "5985895924": "ERRO",
  "5985909604": "60es 0",
  "5985948044": "60es 1",
  "5985948984": "60es 3",
  "6028662144": "60es 2",
  "6062896104": "AAAROCK",
  "6110006644": "00rock",
  "6110007384": "01rock",
  "6110007884": "02rock",
  "6110008524": "03rock",
  "6803485584": "Godfather of Harlem",
  "7220096624": "___AAA 2020",
  "7417989224": "ELISA",
  "8342147642": "missing_128",
  "8342153942": "missing_320",
  "5635344242": "Loved Tracks",
};
*/
