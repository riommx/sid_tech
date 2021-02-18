import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
//
import '../../domain/track_files/track_files.dart';
import '../../domain/track_files/track_files_factory.dart';

// #############################################################################
// #
// #  TODO: Comment class
// #
// #
// #############################################################################
part 'track_files_dto.freezed.dart';

part 'track_files_dto.g.dart';

@freezed
abstract class TrackFilesDTO implements _$TrackFilesDTO {
  const TrackFilesDTO._();

  const factory TrackFilesDTO({
    @JsonKey(ignore: false) String id,
    @required List<String> files,
    // @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _TrackFilesDTO;

  factory TrackFilesDTO.fromDomain(TrackFiles trackFiles) => TrackFilesDTO(
      id: trackFiles.id.getOrCrash().toString(),
      files: trackFiles.files.getOrCrash().asList().map(
            (file) => file.getOrCrash(),
          )
      //serverTimeStamp: FieldValue.serverTimestamp(),
      );

  TrackFiles toDomain() => TrackFilesFactory().create(
        id: int.parse(id),
        files: files.toImmutableList(),
      );

  factory TrackFilesDTO.fromJson(Map<String, dynamic> json) =>
      _$TrackFilesDTOFromJson(json);

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
