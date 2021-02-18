import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

import 'album/album.dart';
import 'album/album_factory.dart';
import 'artist/artist.dart';
import 'artist/artist_factory.dart';
import 'core/entity/entity.dart';
import 'core/vo/vos.dart';
import 'playlist/playlist.dart';
import 'playlist/playlist_factory.dart';
import 'track/track.dart';
import 'track/track_factory.dart';
import 'track_files/track_files.dart';
import 'track_files/track_files_factory.dart';
//

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
abstract class Muz {
  //
  // static Artist artist({
  //   @required int id,
  //   @required String name,
  // }) =>
  //     ArtistFactory().create(id: VOs.id(id), name: VOs.name(name));

  // static Playlist playlist({
  //   @required int id,
  //   @required String name,
  //   @required List<int> tracks,
  // }) =>
  //     PlaylistFactory().create(
  //         id: VOs.id(id), name: VOs.name(name), tracks: VOs.ids(tracks));

  // static TrackFiles trackFiles({
  //   @required int id,
  //   @required List files,
  // }) =>
  //     TrackFilesFactory().create(id: VOs.id(id), files: VOs.files(files));

  // static Album album({
  //   @required int id,
  //   @required String title,
  //   @required String releaseDate,
  //   @required int upc,
  //   @required int artistId,
  // }) =>
  //     AlbumFactory().create(
  //         id: VOs.id(id),
  //         title: VOs.title(title),
  //         releaseDate: VOs.date(releaseDate),
  //         upc: VOs.upc(upc),
  //         artistId: VOs.id(artistId));

  // static Track track({
  //   @required int id,
  //   @required String title,
  //   @required int duration,
  //   @required int albumId,
  //   @required int artistId,
  //   @required String previewURL,
  // }) =>
  //     TrackFactory().create(
  //       id: VOs.id(id),
  //       title: VOs.title(title),
  //       duration: VOs.seconds(duration),
  //       albumId: VOs.id(albumId),
  //       artistId: VOs.id(artistId),
  //       previewURL: VOs.url(previewURL),
  //     );

  // =====================================================================
  static Entity fromMap({@required Map map, @required Type type}) {
    var entity;
    switch (type) {
      //
      case Artist:
        entity =
            ArtistFactory().create(id: int.parse(map['id']), name: map['name']);
        break;
      //
      case Album:
        entity = AlbumFactory().create(
            id: int.parse(map['id']),
            title: map['title'],
            releaseDate: map['releaseDate'],
            upc: int.parse(map['upc']),
            artistId: int.parse(map['artistId']));
        break;
      //
      case Track:
        entity = TrackFactory().create(
          id: int.parse(map['id']),
          title: map['title'],
          duration: int.parse(map['duration']),
          albumId: int.parse(map['albumId']),
          artistId: int.parse(map['artistId']),
          previewURL: map['previewURL'], //url,
        );
        break;
      //
      case Playlist:
        var intList = KtMutableList<int>.empty();
        map['tracks'].forEach((e) => intList.add(int.parse(e)));
        entity = PlaylistFactory().create(
          id: int.parse(map['id']),
          name: map['name'],
          tracks: intList.toList(),
        );
        break;
      //
      case TrackFiles:
        var ktlist = KtMutableList<String>.empty();
        map['files'].forEach((file) => ktlist.add(file));
        entity = TrackFilesFactory()
            .create(id: int.parse(map['id']), files: ktlist.toList());
        break;
    }
    //
    return entity;
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
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXI >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈       -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━━╯┈┈    --->  May the source be with you!  <---
// *  v 1.4 - 2.0
// ******************************************************************
