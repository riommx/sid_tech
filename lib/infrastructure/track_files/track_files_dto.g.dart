// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_files_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackFilesDTO _$_$_TrackFilesDTOFromJson(Map<String, dynamic> json) {
  return _$_TrackFilesDTO(
    id: json['id'] as String,
    files: (json['files'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_TrackFilesDTOToJson(_$_TrackFilesDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'files': instance.files,
    };
