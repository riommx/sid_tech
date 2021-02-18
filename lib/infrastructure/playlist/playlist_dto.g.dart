// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistDTO _$_$_PlaylistDTOFromJson(Map<String, dynamic> json) {
  return _$_PlaylistDTO(
    id: json['id'] as String,
    name: json['name'] as String,
    tracks: (json['tracks'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PlaylistDTOToJson(_$_PlaylistDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tracks': instance.tracks,
    };
