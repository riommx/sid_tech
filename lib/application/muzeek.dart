import 'package:sid_tech/application/muzeek_helpers.dart';
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

  void checkArtists() {
    print('==============checking artists===========================');
    _tracks.forEach((trackId, track) {
      if (_artists.containsKey(track.artistId.value)) {
        print(_artists[track.artistId.value]);
        print('=========================================');
      } else {
        print('bingo');
      }
    });
  }

// ============================================================================
  Future<void> scan({
    bool playlists = false,
    bool trackFiles = false,
    bool fromPlaylists = false,
    bool fromTrackFiles = false,
    bool previews = false,
    bool pics = false,
    bool releaseDate = false,
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
    if (releaseDate) {
      var albumsMap = {};
      _albums.forEach((key, value) =>
          albumsMap.putIfAbsent(key.toString(), () => value.toMap()));
      scansList.add(await scanReleaseDate(albums: albumsMap));
      _albums.clear();
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
    if (fromTrackFiles) {
      var scanned =
          await scanFromTrackFiles(trackFiles: _trackFiles, tracks: _tracks);
      scansList.add(scanned['tracks']);
      scansList.add(scanned['artists']);
      scansList.add(scanned['albums']);
    }
    //
    if (pics) {
      var newPics = await scanPics(artists: _artists);
      print('${newPics.length} NEW PICTURES ============');
      newPics.forEach((element) => print(element));
      newPics = await scanPics(artists: _artists, albums: _albums);
      print('${newPics.length} NEW COVERS ============');
      newPics.forEach((element) => print(element));
    }
    //
    if (previews) {
      var newPreviews =
          await scanDeezerPreviews(artists: _artists, tracks: _tracks);
      newPreviews.forEach((element) => print(element));
    }
    //
    var saveIt = false;
    scansList.forEach((scanMap) {
      //
      scanMap['values'].forEach((id, map) {
        saveIt = true;
        var entity =
            Muz.fromMap(map: map, type: entityType(kind: scanMap['kind']));
        var target = entityMap(kind: scanMap['kind']);
        target.putIfAbsent(id, () => entity);
      });
      //
    });
    //
    if (saveIt) await save(maps: entityMaps());
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
          id, () => {'album': album, 'songs': 0, 'artists': {}, 'tracks': {}});
    });
    //
    _tracks.forEach((trackId, track) {
      //
      var artistId = track.artistId.value.value;
      var albumId = track.albumId.value.value;
      //
      albumsMap[albumId]['songs']++;
      albumsMap[albumId]['artists']
          .putIfAbsent(artistId, () => _artists[artistId]);
      albumsMap[albumId]['tracks'].putIfAbsent(trackId, () => track);
      //
    });
    //
    return albumsMap;
  }

  List listTopAlbums({int howMany = 50}) {
    howMany = howMany < 1 ? 1 : howMany;
    var albumsMap = albums(idList: []);
    var topAlbums = [];
    albumsMap.forEach((key, value) {
      topAlbums.add(value);
    });
    topAlbums.sort((a, b) => b['songs'].compareTo(a['songs']));

    // RETURN
    return topAlbums.getRange(0, howMany).toList();
  }

  Map artists({List idList}) {
    //
    if (idList.isEmpty) {
      idList.addAll(List.from(_artists.keys));
    }
    var artistsMap = {};
    //
    idList.forEach((id) {
      var artist = _artists[id];
      artistsMap.putIfAbsent(
          id, () => {'artist': artist, 'songs': 0, 'albums': {}, 'tracks': {}});
    });
    //
    _tracks.forEach((trackId, track) {
      //
      var artistId = track.artistId.value.value;
      var albumId = track.albumId.value.value;
      //
      artistsMap[artistId]['songs']++;
      //
      artistsMap[artistId]['albums']
          .putIfAbsent(albumId, () => _albums[albumId]);

      artistsMap[artistId]['tracks'].putIfAbsent(trackId, () => track);
    });
    //
    return artistsMap;
  }

  List listTopArtists({int howMany = 50}) {
    howMany = howMany < 1 ? 1 : howMany;
    var artistsMap = artists(idList: []);
    var topArtists = [];
    artistsMap.forEach((key, value) {
      topArtists.add(value);
    });
    topArtists.sort((a, b) => b['songs'].compareTo(a['songs']));

    //RETURN
    return topArtists.getRange(0, howMany).toList();
  }
}
