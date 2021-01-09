import 'package:sid_tech/application/helpers.dart';
//
import 'package:sid_tech/application/paths.dart';
//
import 'package:sid_tech/domain/artist.dart';
import 'package:sid_tech/domain/album.dart';
import 'package:sid_tech/domain/track.dart';
import 'package:sid_tech/domain/playlist.dart';
import 'package:sid_tech/domain/track_files.dart';
//
import 'package:sid_tech/domain/muzeek_factory.dart';

class Muzeek {
  Map<int, Track> _tracks;
  Map<int, Album> _albums;
  Map<int, Artist> _artists;
  Map<int, Playlist> _playlists;
  Map<int, TrackFiles> _trackFiles;

// https://api.deezer.com/user/2668644462/playlists
// https://api.deezer.com/playlist/5901083884/tracks

  //final _missing = {'128': 8342147642, '320': 8342153942};

  //
  //var _scanned = false;

// ============================================================================
  Future<void> load() async {
    var whatList = [
      {'artists': Artist},
      {'albums': Album},
      {'tracks': Track},
      {'playlists': Playlist},
      {'trackFiles': TrackFiles},
    ];

    for (var what in whatList) {
      var contentMap = await readMap(path: Paths.WHAT[what.keys.first]);
      //
      contentMap.forEach((key, value) {
        //
        var id = int.parse(key);
        var entity = Muz.fromMap(map: value, type: what.values.first);
        //
        switch (what.values.first) {
          case Artist:
            entity = _artists.putIfAbsent(id, () => entity);
            break;
          case Album:
            entity = _albums.putIfAbsent(id, () => entity);
            break;
          case Track:
            entity = _tracks.putIfAbsent(id, () => entity);
            break;
          case Playlist:
            entity = _playlists.putIfAbsent(id, () => entity);
            break;
          case TrackFiles:
            entity = _trackFiles.putIfAbsent(id, () => entity);
            break;
        }
      });
    }
  }

// ============================================================================
  Future<bool> save() async {
    //
    var success = false;
    //
    var whatList = [
      {'artists': _artists},
      {'albums': _albums},
      {'tracks': _tracks},
      {'playlists': _playlists},
      {'trackFiles': _trackFiles},
    ];
    for (var what in whatList) {
      var map = {};
      what.values.first.forEach((key, value) {
        map.putIfAbsent(key, () => value.toMap());
      });

      success = await writeMap(path: Paths.WHAT[what.keys.first], map: map);
    }

    return success;
  }

/*
// ============================================================================
  Future<void> scan({bool playlists = false}) async {
    //
    _scanned = true;
    //
    if (playlists) await _scanPlaylists();
    //
    await _scanFiles(pathScan: _lib, recursive: true);

    await _scanPics();

    var downloaded = await _scanDeezerPreviews();
    print('downloaded: ${downloaded.length} previews');
  }



// ============================================================================
  void _filesReset() {
    // LOG
    print('Start reset at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    //
    _tracks.forEach((id, track) {
      // LOG
      /*
      if (subTotal == 500) {
        subTotal = 0;
        print(total);
        print(
            '$total at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      */
      subTotal++;
      total++;
      //
      _tracks[id]['files'].clear();
    });
    _scanned = true;
    // LOG
    stopW.stop();
    print(
        'End of reset at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    // VOID
  }

// ============================================================================
  Future<void> _scanFiles({String pathScan, bool recursive = false}) async {
    //
    // LOG
    print('Start scan files at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    //
    //_filesReset();
    //
    final notDeezer = <String>[];
    final other = <String>[];
    final lrc = <String>[];
    var nfiles = 0;
    var nTracks = 0;
    //
    var files = await listPathContent(pathFrom: pathScan, recursive: recursive);
    //
    await Future.forEach(files, (path) async {
      //
      // LOG
      /*
      if (subTotal == 500) {
        subTotal = 0;
        print(total);
        print(
            '$total at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      */
      subTotal++;
      total++;
      //
      var file = FilePath.create(filePath: path);
      if (file.isMP3) {
        if (file.isDeezer) {
          //
          if (_tracks.containsKey(file.id)) {
            _tracks[file.id]['files'].add(file);
          } else {
            //print(_tracks[file.id]);
            nTracks++;
            //print('NEW');
            var trackMap =
                await deezer_API(what: 'track', id: file.id.toString());
            var track = Track.fromDeezer(track: trackMap);
            //print(track.title);
            var album = Album.fromDeezer(track: trackMap);
            _albums.putIfAbsent(album.id, () => album);
            //
            var artist = Artist.fromDeezer(track: trackMap);
            _artists.putIfAbsent(artist.id, () => artist);
            _tracks.putIfAbsent(
                file.id,
                () => {
                      'track': track,
                      'files': <FilePath>{file},
                      'playlists': <Id>{}
                    });
          }
          nfiles++;
          //
        } else {
          notDeezer.add(path);
        }
      } else {
        if (file.isLRC) {
          lrc.add(path);
        } else {
          other.add(path);
        }
      }
    });
    _scanned = true;
    // LOG
    stopW.stop();
    print(
        'End of scan files at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    //
    print('Scanned ${files.length} files');
    print('${nfiles} files of ${_tracks.length} tracks / ${nTracks} new add');
    print(
        'notDeezer: ${notDeezer.length}, lrc: ${lrc.length}, other: ${other.length}');
    // VOID
  }

// ============================================================================
  Future<void> _scanPlaylists() async {
    //
    // FOR LOG
    print('start Scan Playlists: ${DateTime.now()}');
    var index = 0;
    var next = false;
    do {
      var playlists = await deezer_API(
          what: 'user',
          id: '2668644462',
          arguments: '/playlists?index=${index}');
      for (var pl in playlists['data']) {
        var id = pl['id'];
        var name = pl['title'];
        _playlists.putIfAbsent(id, () => name);
      }
      index += 25;
      next = playlists.containsKey('next');
    } while (next);
    // LOG
    //_playlistNames
    //    .forEach((key, value) => print('$key ${key.runtimeType} - $value'));
    //
    await Future.forEach(_playlists.keys, (playId) async {
      var playlist = await deezer_API(what: 'playlist', id: playId.toString());
      // LOG
      print(_playlists[playId]);
      var pl = Id.create(id: playId);
      for (var trackMap in playlist['tracks']['data']) {
        if (_tracks.containsKey(trackMap['id'])) {
          _tracks[trackMap['id']]['playlists'].add(pl);
          //print(_tracks[trackMap['id']]['playlists']);
        } else {
          var track = Track.fromDeezer(track: trackMap);
          _tracks.putIfAbsent(
              trackMap['id'],
              () => {
                    'track': track,
                    'files': <FilePath>{},
                    'playlists': <Id>{pl}
                  });
          var album = Album.fromDeezer(track: trackMap);
          _albums.putIfAbsent(album.id, () => album);
          //
          var artist = Artist.fromDeezer(track: trackMap);
          _artists.putIfAbsent(artist.id, () => artist);
        }
      }
    });
    // LOG
    print('end of Scan Playlists: ${DateTime.now()}');
    print('tracks: ${_tracks.length} / playlists ${_playlists.length}');
    print('artists: ${_artists.length} / albums ${_albums.length}');
    //

    // VOID
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
    await Future.forEach(_tracks.keys, (id) async {
      // LOG
      /*
      if (subTotal == 500) {
        subTotal = 0;
        print(total);
        print(
            '$total at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      */
      subTotal++;
      total++;
      //
      var url = _tracks[id]['track'].preview;
      if (url != '') {
        var artist = _artists[_tracks[id]['track'].artist];
        var name = removeIvalidChars(artist.name);
        var title = removeIvalidChars(_tracks[id]['track'].title);
        var folder = folderPreview(name: name);
        var filename =
            'E:\\__DEEZ\\muzeek\\previews\\${folder}\\$name - $title - ${id.toString()}.mp3';
        var success = await download(url: url, path: filename);
        // LOG
        if (success) downloaded.add(filename);
      }
    });
    // LOG
    stopW.stop();
    print(
        'End of scan previews at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    _scanned = true;
    // RETURN
    return downloaded;
  }

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
      var artist = track['track'].artist;
      var album = track['track'].album;
      //
      if (albumsMap.containsKey(album)) {
        //
        albumsMap[album]['artists'].add(_artists[artist]);
        albumsMap[album]['songs']++;
        //
        if (!albumsMap[album]['tracks'].containsKey(artist)) {
          albumsMap[album]['tracks'].putIfAbsent(artist, () => <Track>{});
        }
        albumsMap[album]['tracks'][artist].add(track['track']);
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

  */
}
