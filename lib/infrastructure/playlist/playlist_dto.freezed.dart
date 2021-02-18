// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playlist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlaylistDTO _$PlaylistDTOFromJson(Map<String, dynamic> json) {
  return _PlaylistDTO.fromJson(json);
}

/// @nodoc
class _$PlaylistDTOTearOff {
  const _$PlaylistDTOTearOff();

// ignore: unused_element
  _PlaylistDTO call(
      {@JsonKey(ignore: false) String id,
      @required String name,
      @required List<String> tracks}) {
    return _PlaylistDTO(
      id: id,
      name: name,
      tracks: tracks,
    );
  }

// ignore: unused_element
  PlaylistDTO fromJson(Map<String, Object> json) {
    return PlaylistDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlaylistDTO = _$PlaylistDTOTearOff();

/// @nodoc
mixin _$PlaylistDTO {
  @JsonKey(ignore: false)
  String get id;
  String get name;
  List<String> get tracks;

  Map<String, dynamic> toJson();
  $PlaylistDTOCopyWith<PlaylistDTO> get copyWith;
}

/// @nodoc
abstract class $PlaylistDTOCopyWith<$Res> {
  factory $PlaylistDTOCopyWith(
          PlaylistDTO value, $Res Function(PlaylistDTO) then) =
      _$PlaylistDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: false) String id, String name, List<String> tracks});
}

/// @nodoc
class _$PlaylistDTOCopyWithImpl<$Res> implements $PlaylistDTOCopyWith<$Res> {
  _$PlaylistDTOCopyWithImpl(this._value, this._then);

  final PlaylistDTO _value;
  // ignore: unused_field
  final $Res Function(PlaylistDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object tracks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      tracks: tracks == freezed ? _value.tracks : tracks as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PlaylistDTOCopyWith<$Res>
    implements $PlaylistDTOCopyWith<$Res> {
  factory _$PlaylistDTOCopyWith(
          _PlaylistDTO value, $Res Function(_PlaylistDTO) then) =
      __$PlaylistDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: false) String id, String name, List<String> tracks});
}

/// @nodoc
class __$PlaylistDTOCopyWithImpl<$Res> extends _$PlaylistDTOCopyWithImpl<$Res>
    implements _$PlaylistDTOCopyWith<$Res> {
  __$PlaylistDTOCopyWithImpl(
      _PlaylistDTO _value, $Res Function(_PlaylistDTO) _then)
      : super(_value, (v) => _then(v as _PlaylistDTO));

  @override
  _PlaylistDTO get _value => super._value as _PlaylistDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object tracks = freezed,
  }) {
    return _then(_PlaylistDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      tracks: tracks == freezed ? _value.tracks : tracks as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlaylistDTO extends _PlaylistDTO {
  const _$_PlaylistDTO(
      {@JsonKey(ignore: false) this.id,
      @required this.name,
      @required this.tracks})
      : assert(name != null),
        assert(tracks != null),
        super._();

  factory _$_PlaylistDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaylistDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final String name;
  @override
  final List<String> tracks;

  @override
  String toString() {
    return 'PlaylistDTO(id: $id, name: $name, tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaylistDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tracks);

  @override
  _$PlaylistDTOCopyWith<_PlaylistDTO> get copyWith =>
      __$PlaylistDTOCopyWithImpl<_PlaylistDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaylistDTOToJson(this);
  }
}

abstract class _PlaylistDTO extends PlaylistDTO {
  const _PlaylistDTO._() : super._();
  const factory _PlaylistDTO(
      {@JsonKey(ignore: false) String id,
      @required String name,
      @required List<String> tracks}) = _$_PlaylistDTO;

  factory _PlaylistDTO.fromJson(Map<String, dynamic> json) =
      _$_PlaylistDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  String get name;
  @override
  List<String> get tracks;
  @override
  _$PlaylistDTOCopyWith<_PlaylistDTO> get copyWith;
}
