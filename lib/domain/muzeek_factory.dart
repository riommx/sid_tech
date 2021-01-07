import 'package:meta/meta.dart';
//
import 'package:sid_tech/domain/artist.dart';
import 'package:sid_tech/domain/artist_factory.dart';
import 'package:sid_tech/domain/album.dart';
import 'package:sid_tech/domain/album_factory.dart';
import 'package:sid_tech/domain/track.dart';
import 'package:sid_tech/domain/track_factory.dart';
import 'package:sid_tech/domain/vos.dart';

abstract class Muz {
  //
  static Artist artist({
    @required int id,
    @required String name,
  }) =>
      ArtistFactory().create(id: VOs.id(id), name: VOs.name(name));

  static Album album({
    @required int id,
    @required String title,
    @required String releaseDate,
    @required int artistId,
  }) =>
      AlbumFactory().create(
          id: VOs.id(id),
          title: VOs.title(title),
          releaseDate: VOs.date(releaseDate),
          artistId: VOs.id(artistId));

  static Track track({
    @required int id,
    @required String title,
    @required int duration,
    @required int albumId,
    @required int artistId,
    @required String previewURL,
  }) =>
      TrackFactory().create(
        id: VOs.id(id),
        title: VOs.title(title),
        duration: VOs.seconds(duration),
        albumId: VOs.id(albumId),
        artistId: VOs.id(artistId),
        previewURL: VOs.url(previewURL),
      );
  // =====================================================================

  static Artist artistFromDeezerTrack({@required Map track}) => artist(
        id: int.parse(track['artist']['id']),
        name: track['artist']['name'],
      );

  static Album albumFromDeezerTrack({@required Map track}) => album(
        id: int.parse(track['album']['id']),
        title: track['album']['title'],
        artistId: int.parse(track['artist']['id']),
        releaseDate: track['album']['release_date'],
      );

  static Track trackFromDeezer({@required Map map}) => track(
        id: int.parse(map['id']),
        title: map['title'],
        duration: int.parse(map['duration']),
        albumId: int.parse(map['album']['id']),
        artistId: int.parse(map['artist']['id']),
        previewURL: map['preview'],
      );

  // =====================================================================

  static Artist artistFromMap({@required Map map}) => artist(
        id: int.parse(map['id']),
        name: map['name'],
      );

  static Album albumFromMap({@required Map map}) => album(
      id: int.parse(map['id']),
      title: map['title'],
      releaseDate: map['releaseDate'],
      artistId: int.parse(map['artistId']));

  static Track trackFromMap({@required Map map}) => track(
        id: int.parse(map['id']),
        title: map['title'],
        duration: int.parse(map['duration']),
        albumId: int.parse(map['albumId']),
        artistId: int.parse(map['artistId']),
        previewURL: map['previewURL'],
      );
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
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// * v 1.0
// ******************************************************************
