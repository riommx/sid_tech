import 'package:dartz/dartz_unsafe.dart';
import 'package:sid_tech/application/helpers.dart';
import 'package:sid_tech/application/helpers_deezer.dart';
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
import 'package:sid_tech/domain/vos.dart';

class Muzeek {
  final Map<int, Track> _tracks = {};
  final Map<int, Album> _albums = {};
  final Map<int, Artist> _artists = {};
  final Map<int, Playlist> _playlists = {};
  final Map<int, TrackFiles> _trackFiles = {};

// https://api.deezer.com/user/2668644462/playlists
// https://api.deezer.com/playlist/5901083884/tracks

  List whatList() => [
        {'kind': 'artists', 'map': _artists, 'type': Artist},
        {'kind': 'albums', 'map': _albums, 'type': Album},
        {'kind': 'tracks', 'map': _tracks, 'type': Track},
        {'kind': 'playlists', 'map': _playlists, 'type': Playlist},
        {'kind': 'trackFiles', 'map': _trackFiles, 'type': TrackFiles},
      ];

// ============================================================================
  // FOR LOG
  void lengths() {
    whatList()
        .forEach((what) => print('${what['kind']} => ${what['map'].length}'));
  }

// ============================================================================
  Future<void> load() async {
    //
    final wList = whatList();
    for (var what in wList) {
      //
      var contentMap = await readMap(path: Paths.WHAT[what['kind']]);
      //
      contentMap.forEach((key, value) {
        //
        var entity = Muz.fromMap(map: value, type: what['type']);
        //
        what['map'].putIfAbsent(key, () => entity);
      });
    }
  }

// ============================================================================
  Future<bool> save() async {
    var success = false;
    //
    final wList = whatList();
    for (var what in wList) {
      var map = {};
      //
      what['map'].forEach((key, value) {
        map.putIfAbsent(key, () => value.toMap());
      });
      //
      success = await writeMap(path: Paths.WHAT[what['kind']], map: map);
    }
    return success;
  }

// ============================================================================
  Future<void> scan({
    bool playlists = false,
    bool trackFiles = false,
    bool fromPlaylists = false,
    bool fromTrackFiles = false,
  }) async {
    //
    if (playlists) await _scanPlaylists();
    //
    if (trackFiles) {
      await _scanTrackFiles(pathScan: Paths.WHAT['lib'], recursive: true);
    }
    //
    if (fromPlaylists) await _scanFromPlaylists();
    //
    if (fromTrackFiles) await _scanFromTrackFiles();
    //
    //if (pics) await _scanPics();
    //if (previews) await _scanDeezerPreviews();
  }

  // ============================================================================
  Future<void> _scanTrackFiles(
      {String pathScan, bool recursive = false}) async {
    //
    // LOG ===================
    /*
    print('Start scan files at ${DateTime.now()}');
    var stopW = Stopwatch();
    stopW.start();
    var total = 0;
    var subTotal = 0;
    */
    //
    final tracks = <int, List<String>>{};
    final notDeezer = <String>[];
    final other = <String>[];
    final lrc = <String>[];

    // FOR LOG
    //var nfiles = 0;
    //var nTracks = 0;
    //
    var files = await listPathContent(pathFrom: pathScan, recursive: recursive);

    files.forEach((file) {
      //
      // LOG ===================
      /*
      if (subTotal == 500) {
        subTotal = 0;
        print(total);
        print(
            '$total at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
      }
      subTotal++;
      total++;
      */
      //
      var ext = extFromFilePath(filePath: file).toLowerCase();
      if (ext == 'mp3') {
        if (kbpsFromFilePath(filePath: file) != '') {
          // LOG
          //nfiles++;
          //
          var id = idFromFilePath(filePath: file);
          if (tracks.containsKey(id)) {
            tracks[id].add(file);
          } else {
            // LOG
            //nTracks++;
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
    tracks.forEach((key, value) {
      var vo = Muz.fromMap(map: {'id': key, 'files': value}, type: TrackFiles);
      _trackFiles.putIfAbsent(key, () => vo);
    });
    //
    // LOG ===================
    /*
    stopW.stop();
    print(
        'End of scan files at ${DateTime.now()} - elapsed: ${stopW.elapsed.toString()}');
    //
    print('Scanned ${files.length} files');
    print('${nfiles} files of ${tracks.length} tracks / ${nTracks} new add');
    print(
        'notDeezer: ${notDeezer.length}, lrc: ${lrc.length}, other: ${other.length}');
    //_trackFiles.forEach((key, value) => value.printInfo());
    print('NON DEEZER - ${notDeezer.length} ==============================');
    notDeezer.forEach((element) => print(element));
    print('OTHER - ${other.length} ===============================');
    other.forEach((element) => print(element));
    */
  }

  Future<void> _scanPlaylists() async {
    //
    // FOR LOG
    //print('start Scan Playlists: ${DateTime.now()}');
    //

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
        _playlists.putIfAbsent(
            id, () => Muz.playlist(id: id, name: name, tracks: []));
      }
      index += 25;
      next = playlists.containsKey('next');
    } while (next);
    // LOG
    //print('end of Scan Playlists: ${DateTime.now()}');
    //print('playlists ${_playlists.length}');
  }

  Future<void> _scanFromPlaylists() async {
    // FOR LOG
    //print('start Scan From Playlists: ${DateTime.now()}');

    await Future.forEach(_playlists.keys, (playId) async {
      var playlist = await deezer_API(what: 'playlist', id: playId.toString());
      // LOG
      //print(_playlists[playId]);
      //
      for (var trackMap in playlist['tracks']['data']) {
        //
        var id = trackMap['id'];
        _playlists[playId].tracks.add(VOs.id(id));
        if (!_tracks.containsKey(id)) {
          newTrack(trackMap: trackMap);
        }
      }
    });
    // LOG
    //print('end of Scan From Playlists: ${DateTime.now()}');
  }

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
/*




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
