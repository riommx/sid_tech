import 'package:freezed_annotation/freezed_annotation.dart';
//
import '../../domain/track/track.dart';
import '../../domain/track/track_factory.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
part 'track_dto.freezed.dart';
part 'track_dto.g.dart';

@freezed
abstract class TrackDTO implements _$TrackDTO {
  const TrackDTO._();

  const factory TrackDTO({
    @JsonKey(ignore: false) String id,
    @required String title,
    @required int duration,
    @required int albumId,
    @required int artistId,
    @required String previewURL,
    //@required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _TrackDTO;

  factory TrackDTO.fromDomain(Track track) => TrackDTO(
        id: track.id.getOrCrash().toString(),
        title: track.title.getOrCrash(),
        duration: track.duration.getOrCrash(),
        albumId: track.albumId.getOrCrash(),
        artistId: track.artistId.getOrCrash(),
        previewURL: track.previewURL.getOrCrash(),
        //serverTimeStamp: FieldValue.serverTimestamp(),
      );

  Track toDomain() => TrackFactory().create(
        id: int.parse(id),
        title: title,
        duration: duration,
        albumId: albumId,
        artistId: artistId,
        previewURL: previewURL,
      );

  factory TrackDTO.fromJson(Map<String, dynamic> json) =>
      _$TrackDTOFromJson(json);

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
