// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'track_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TrackDTO _$TrackDTOFromJson(Map<String, dynamic> json) {
  return _TrackDTO.fromJson(json);
}

/// @nodoc
class _$TrackDTOTearOff {
  const _$TrackDTOTearOff();

// ignore: unused_element
  _TrackDTO call(
      {@JsonKey(ignore: false) String id,
      @required String title,
      @required int duration,
      @required int albumId,
      @required int artistId,
      @required String previewURL}) {
    return _TrackDTO(
      id: id,
      title: title,
      duration: duration,
      albumId: albumId,
      artistId: artistId,
      previewURL: previewURL,
    );
  }

// ignore: unused_element
  TrackDTO fromJson(Map<String, Object> json) {
    return TrackDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TrackDTO = _$TrackDTOTearOff();

/// @nodoc
mixin _$TrackDTO {
  @JsonKey(ignore: false)
  String get id;
  String get title;
  int get duration;
  int get albumId;
  int get artistId;
  String get previewURL;

  Map<String, dynamic> toJson();
  $TrackDTOCopyWith<TrackDTO> get copyWith;
}

/// @nodoc
abstract class $TrackDTOCopyWith<$Res> {
  factory $TrackDTOCopyWith(TrackDTO value, $Res Function(TrackDTO) then) =
      _$TrackDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: false) String id,
      String title,
      int duration,
      int albumId,
      int artistId,
      String previewURL});
}

/// @nodoc
class _$TrackDTOCopyWithImpl<$Res> implements $TrackDTOCopyWith<$Res> {
  _$TrackDTOCopyWithImpl(this._value, this._then);

  final TrackDTO _value;
  // ignore: unused_field
  final $Res Function(TrackDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object duration = freezed,
    Object albumId = freezed,
    Object artistId = freezed,
    Object previewURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      duration: duration == freezed ? _value.duration : duration as int,
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      artistId: artistId == freezed ? _value.artistId : artistId as int,
      previewURL:
          previewURL == freezed ? _value.previewURL : previewURL as String,
    ));
  }
}

/// @nodoc
abstract class _$TrackDTOCopyWith<$Res> implements $TrackDTOCopyWith<$Res> {
  factory _$TrackDTOCopyWith(_TrackDTO value, $Res Function(_TrackDTO) then) =
      __$TrackDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: false) String id,
      String title,
      int duration,
      int albumId,
      int artistId,
      String previewURL});
}

/// @nodoc
class __$TrackDTOCopyWithImpl<$Res> extends _$TrackDTOCopyWithImpl<$Res>
    implements _$TrackDTOCopyWith<$Res> {
  __$TrackDTOCopyWithImpl(_TrackDTO _value, $Res Function(_TrackDTO) _then)
      : super(_value, (v) => _then(v as _TrackDTO));

  @override
  _TrackDTO get _value => super._value as _TrackDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object duration = freezed,
    Object albumId = freezed,
    Object artistId = freezed,
    Object previewURL = freezed,
  }) {
    return _then(_TrackDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      duration: duration == freezed ? _value.duration : duration as int,
      albumId: albumId == freezed ? _value.albumId : albumId as int,
      artistId: artistId == freezed ? _value.artistId : artistId as int,
      previewURL:
          previewURL == freezed ? _value.previewURL : previewURL as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TrackDTO extends _TrackDTO {
  const _$_TrackDTO(
      {@JsonKey(ignore: false) this.id,
      @required this.title,
      @required this.duration,
      @required this.albumId,
      @required this.artistId,
      @required this.previewURL})
      : assert(title != null),
        assert(duration != null),
        assert(albumId != null),
        assert(artistId != null),
        assert(previewURL != null),
        super._();

  factory _$_TrackDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TrackDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final String title;
  @override
  final int duration;
  @override
  final int albumId;
  @override
  final int artistId;
  @override
  final String previewURL;

  @override
  String toString() {
    return 'TrackDTO(id: $id, title: $title, duration: $duration, albumId: $albumId, artistId: $artistId, previewURL: $previewURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality()
                    .equals(other.albumId, albumId)) &&
            (identical(other.artistId, artistId) ||
                const DeepCollectionEquality()
                    .equals(other.artistId, artistId)) &&
            (identical(other.previewURL, previewURL) ||
                const DeepCollectionEquality()
                    .equals(other.previewURL, previewURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(albumId) ^
      const DeepCollectionEquality().hash(artistId) ^
      const DeepCollectionEquality().hash(previewURL);

  @override
  _$TrackDTOCopyWith<_TrackDTO> get copyWith =>
      __$TrackDTOCopyWithImpl<_TrackDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrackDTOToJson(this);
  }
}

abstract class _TrackDTO extends TrackDTO {
  const _TrackDTO._() : super._();
  const factory _TrackDTO(
      {@JsonKey(ignore: false) String id,
      @required String title,
      @required int duration,
      @required int albumId,
      @required int artistId,
      @required String previewURL}) = _$_TrackDTO;

  factory _TrackDTO.fromJson(Map<String, dynamic> json) = _$_TrackDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  String get title;
  @override
  int get duration;
  @override
  int get albumId;
  @override
  int get artistId;
  @override
  String get previewURL;
  @override
  _$TrackDTOCopyWith<_TrackDTO> get copyWith;
}
