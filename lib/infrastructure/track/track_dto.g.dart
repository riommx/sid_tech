// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackDTO _$_$_TrackDTOFromJson(Map<String, dynamic> json) {
  return _$_TrackDTO(
    id: json['id'] as String,
    title: json['title'] as String,
    duration: json['duration'] as int,
    albumId: json['albumId'] as int,
    artistId: json['artistId'] as int,
    previewURL: json['previewURL'] as String,
  );
}

Map<String, dynamic> _$_$_TrackDTOToJson(_$_TrackDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'albumId': instance.albumId,
      'artistId': instance.artistId,
      'previewURL': instance.previewURL,
    };
