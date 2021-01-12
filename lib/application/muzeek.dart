import 'dart:ffi';

import 'package:sid_tech/application/muzeek_helpers.dart';
import 'package:sid_tech/application/helpers.dart';
import 'package:sid_tech/application/deezer_helpers.dart';
//
import 'package:sid_tech/application/paths.dart';
import 'package:sid_tech/core/entity.dart';
//
import 'package:sid_tech/domain/artist.dart';
import 'package:sid_tech/domain/album.dart';
import 'package:sid_tech/domain/track.dart';
import 'package:sid_tech/domain/playlist.dart';
import 'package:sid_tech/domain/track_files.dart';
//
import 'package:sid_tech/domain/muzeek_factory.dart';

class Muzeek {
  final Map _tracks;
  final Map _albums;
  final Map _artists;
  final Map _playlists;
  final Map _trackFiles;

  static List WHAT = [
    {
      'kind': 'artists',
      'type': Artist,
      'path': Paths.WHAT['artists'],
    },
    {
      'kind': 'albums',
      'type': Album,
      'path': Paths.WHAT['albums'],
    },
    {
      'kind': 'tracks',
      'type': Track,
      'path': Paths.WHAT['tracks'],
    },
    {
      'kind': 'playlists',
      'type': Playlist,
      'path': Paths.WHAT['playlists'],
    },
    {
      'kind': 'trackFiles',
      'type': TrackFiles,
      'path': Paths.WHAT['trackFiles'],
    },
  ];

// ============================================================================
  Muzeek._(this._artists, this._albums, this._tracks, this._playlists,
      this._trackFiles);

// ============================================================================
  static Future<Muzeek> create() async {
    //
    var maps = {};
    //
    for (var what in WHAT) {
      maps[what['kind']] = await load(what: what);
    }
    return Muzeek._(maps['artists'], maps['albums'], maps['tracks'],
        maps['playlists'], maps['trackFiles']);
  }

// ============================================================================
  Map entityMaps() => {
        'artists': _artists,
        'albums': _albums,
        'tracks': _tracks,
        'playlists': _playlists,
        'trackFiles': _trackFiles,
      };

// ============================================================================
  Map entityMap({String kind = ''}) =>
      kind == '' ? entityMaps() : entityMaps()[kind];

// ============================================================================
  Type entityType({String kind = ''}) {
    var type = Entity;
    WHAT.forEach((element) {
      if (element['kind'] == kind) type = element['type'];
    });
    return type;
  }

// ============================================================================
  // FOR LOG
  void lengths() =>
      entityMaps().forEach((key, value) => print('${key} => ${value.length}'));

// ============================================================================
  Future<void> scan({
    bool playlists = false,
    bool trackFiles = false,
    bool fromPlaylists = false,
    bool fromTrackFiles = false,
    bool previews = false,
    bool pics = false,
  }) async {
    //
    var scansList = [];

    if (playlists) {
      scansList.add(await scanPlaylists());
    }
    //
    if (trackFiles) {
      scansList.add(
          await scanTrackFiles(pathScan: Paths.WHAT['lib'], recursive: true));
    }
    //
    if (fromPlaylists) {
      var playlistsMap = {};
      _playlists.forEach((key, value) =>
          playlistsMap.putIfAbsent(key.toString(), () => value.toMap()));
      var scanned = await scanFromPlaylists(playlists: playlistsMap);
      scansList.add(scanned['tracks']);
      scansList.add(scanned['artists']);
      scansList.add(scanned['albums']);
      scansList.add(scanned['playlists']);
      _playlists.clear();
      print(_playlists.length);
    }
    //
    if (fromTrackFiles) await _scanFromTrackFiles();
    //
    if (pics) await _scanPics();
    //
    if (previews) await _scanDeezerPreviews();
    //
    scansList.forEach((scanMap) {
      //
      scanMap['values'].forEach((id, map) {
        if (scanMap['kind'] == 'albums') {
          print(map);
        }
        var entity =
            Muz.fromMap(map: map, type: entityType(kind: scanMap['kind']));
        var target = entityMap(kind: scanMap['kind']);
        target.putIfAbsent(id, () => entity);
      });
      //
    });
    //
    await save(maps: entityMaps());
    print(_trackFiles.keys.first.runtimeType);
    print(_playlists.keys.first.runtimeType);
  }

  // for test only
  Future<void> saveAlbums() async {
    await save(maps: {
      'albums': _albums,
    });
  }

  // LOG
  //print('end of Scan From Playlists: ${DateTime.now()}');

  void newTrack({Map trackMap}) {
    var id = trackMap['id'];
    Track track = Muz.fromDeezerTrackMap(map: trackMap, type: Track);
    _tracks.putIfAbsent(id, () => track);

    Album album = Muz.fromDeezerTrackMap(map: trackMap, type: Album);
    _albums.putIfAbsent(album.id.value, () => album);
    //
    Artist artist = Muz.fromDeezerTrackMap(map: trackMap, type: Artist);
    _artists.putIfAbsent(artist.id.value, () => artist);
  }

  Future<void> _scanFromTrackFiles() async {
    // LOG
    //print('start Scan From TrackFiles: ${DateTime.now()}');
    //var newT = 0;
    await Future.forEach(_trackFiles.keys, (id) async {
      if (!_tracks.containsKey(id)) {
        var trackMap = await deezer_API(what: 'track', id: id.toString());
        // LOG
        //newT++;
        newTrack(trackMap: trackMap);
      }
    });
    // LOG
    //print('new tracks $newT');
    //print('end of Scan From TrackFiles: ${DateTime.now()}');
  }

  // ============================================================================
  Future<List> _scanDeezerPreviews() async {
    // LOG
    print('Start scan Previews at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    //
    var downloaded = [];
    await Future.forEach(_tracks.values, (track) async {
      // LOG

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
        var artist = _artists[track.artistId.value];
        var name = removeIvalidChars(artist.name.value);
        var title = removeIvalidChars(track.title.value);
        var folder = folderPreview(name: name);
        var filename =
            '${Paths.WHAT['previews']}${folder}\\$name - $title - ${track.id.value}.mp3';
        var success = await download(url: url, path: filename);
        // LOG
        if (success) downloaded.add(filename);
      }
    });
    // LOG
    stopW.stop();
    print(
        'End of scan previews at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    // RETURN
    return downloaded;
  }

  // ============================================================================
  Future<void> _scanPics() async {
    // FOR LOG
    print('start Scan Artists: ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    //
    var artistsPics = await scanDeezerPics(artists: _artists);

    print('start Scan Albums: ${DateTime.now()}');

    var albumsPics = await scanDeezerPics(artists: _artists, albums: _albums);

    // FOR LOG
    stopW.stop();
    print('end of Scan Pics: ${DateTime.now()} - ${stopW.elapsed.toString()}');
    print('artists: ${artistsPics.length} / albums: ${albumsPics.length}');
    //VOID
  }

  Map albums({List idList}) {
    //
    if (idList.isEmpty) {
      idList.addAll(List.from(_albums.keys));
    }
    var albumsMap = {};
    //
    idList.forEach((id) {
      var album = _albums[id];
      albumsMap.putIfAbsent(
          id,
          () => <String, dynamic>{
                'album': album,
                'songs': 0,
                'artists': <Artist>{},
                'tracks': <int, dynamic>{}
              });
    });
    //
    _tracks.forEach((id, track) {
      //
      var artist = track.artistId.value;
      var album = track.albumId.value;
      //
      if (albumsMap.containsKey(album)) {
        //
        albumsMap[album]['artists'].add(_artists[artist]);
        albumsMap[album]['songs']++;
        //
        if (!albumsMap[album]['tracks'].containsKey(artist)) {
          albumsMap[album]['tracks'].putIfAbsent(artist, () => <Track>{});
        }
        albumsMap[album]['tracks'][artist].add(track);
      }
    });
    //
    return albumsMap;
  }

  List listTopAlbums() {
    var albumsMap = albums(idList: []);
    var topAlbums = [];
    albumsMap.forEach((key, value) {
      topAlbums.add(value);
    });
    topAlbums.sort((a, b) => b['songs'].compareTo(a['songs']));

    // RETURN
    return topAlbums;
  }
/*
  List topArtists() {
    var artistsMap = artists(idList: []);
    var topArtists = [];
    artistsMap.forEach((key, value) {
      topArtists.add(value);
      //({'songs': value['songs'], 'artist': key});
    });
    topArtists.sort((a, b) => b['songs'].compareTo(a['songs']));

    //RETURN
    return topArtists;
  }


// ============================================================================
  Map artists({List<int> idList}) {
    //
    if (idList.isEmpty) {
      idList.addAll(List.from(_artists.keys));
    }
    var artistsMap = {};
    //
    idList.forEach((id) {
      var artist = _artists[id];
      artistsMap.putIfAbsent(
          id,
          () => <String, dynamic>{
                'artist': artist,
                'songs': 0,
                'albums': <Album>{},
                'tracks': <int, dynamic>{}
              });
    });
    //
    _tracks.forEach((id, track) {
      //
      var artist = track['track'].artist;
      var album = track['track'].album;
      //
      if (artistsMap.containsKey(artist)) {
        //
        artistsMap[artist]['albums'].add(_albums[album]);
        artistsMap[artist]['songs']++;
        //
        if (!artistsMap[artist]['tracks'].containsKey(album)) {
          artistsMap[artist]['tracks'].putIfAbsent(album, () => <Track>{});
        }
        artistsMap[artist]['tracks'][album].add(track['track']);
      }
    });
    //
    return artistsMap;
  }


  */
}
