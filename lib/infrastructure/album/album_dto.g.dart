// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumDTO _$_$_AlbumDTOFromJson(Map<String, dynamic> json) {
  return _$_AlbumDTO(
    id: json['id'] as String,
    title: json['title'] as String,
    releaseDate: json['releaseDate'] as String,
    upc: json['upc'] as int,
    artistId: json['artistId'] as int,
  );
}

Map<String, dynamic> _$_$_AlbumDTOToJson(_$_AlbumDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'releaseDate': instance.releaseDate,
      'upc': instance.upc,
      'artistId': instance.artistId,
    };
