import 'package:freezed_annotation/freezed_annotation.dart';
//
import '../../domain/artist/artist.dart';
import '../../domain/artist/artist_factory.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
abstract class ArtistDTO implements _$ArtistDTO {
  const ArtistDTO._();

  const factory ArtistDTO({
    @JsonKey(ignore: false) String id,
    @required String name,
    //@required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ArtistDTO;

  factory ArtistDTO.fromDomain(Artist artist) => ArtistDTO(
        id: artist.id.getOrCrash().toString(),
        name: artist.name.getOrCrash(),
        //serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Artist toDomain() => ArtistFactory().create(
        id: int.parse(id),
        name: name,
      );

  factory ArtistDTO.fromJson(Map<String, dynamic> json) =>
      _$ArtistDTOFromJson(json);

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
