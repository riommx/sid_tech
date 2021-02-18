import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
//
import '../../domain/playlist/playlist.dart';
import '../../domain/playlist/playlist_factory.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
part 'playlist_dto.freezed.dart';

part 'playlist_dto.g.dart';

@freezed
abstract class PlaylistDTO implements _$PlaylistDTO {
  const PlaylistDTO._();

  const factory PlaylistDTO({
    @JsonKey(ignore: false) String id,
    @required String name,
    @required List<String> tracks,
    // @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _PlaylistDTO;

  factory PlaylistDTO.fromDomain(Playlist playlist) => PlaylistDTO(
      id: playlist.id.getOrCrash().toString(),
      name: playlist.name.getOrCrash(),
      tracks: playlist.tracks.getOrCrash().asList().map(
            (file) => file.getOrCrash().toString(),
          )
      //serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Playlist toDomain() => PlaylistFactory().create(
        id: int.parse(id),
        name: name,
        tracks: tracks.map((e) => int.parse(e)).toImmutableList(),
      );

  factory PlaylistDTO.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDTOFromJson(json);

  // factory TrackFilesDTO.fromFirestore(DocumentSnapshot doc) {
  //   return TrackFilesDTO.fromJson(doc.data()).copyWith(id: doc.id);
  // }
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
// *  v 2.0
// ******************************************************************
