import 'package:freezed_annotation/freezed_annotation.dart';
//
import '../../domain/album/album.dart';
import '../../domain/album/album_factory.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
part 'album_dto.freezed.dart';
part 'album_dto.g.dart';

@freezed
abstract class AlbumDTO implements _$AlbumDTO {
  const AlbumDTO._();

  const factory AlbumDTO({
    @JsonKey(ignore: false) String id,
    @required String title,
    @required String releaseDate,
    @required int upc,
    @required int artistId,
    //@required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _AlbumDTO;

  factory AlbumDTO.fromDomain(Album album) => AlbumDTO(
        id: album.id.getOrCrash().toString(),
        title: album.title.getOrCrash(),
        releaseDate: album.releaseDate.getOrCrash(),
        upc: album.upc.getOrCrash(),
        artistId: album.artistId.getOrCrash(),
        //serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Album toDomain() => AlbumFactory().create(
        id: int.parse(id),
        title: title,
        releaseDate: releaseDate,
        upc: upc,
        artistId: artistId,
      );

  factory AlbumDTO.fromJson(Map<String, dynamic> json) =>
      _$AlbumDTOFromJson(json);

  // factory TrackDTO.fromFirestore(DocumentSnapshot doc) {
  //   return TrackDTO.fromJson(doc.data()).copyWith(id: doc.id);
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
