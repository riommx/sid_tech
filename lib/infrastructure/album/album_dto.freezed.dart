// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'album_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AlbumDTO _$AlbumDTOFromJson(Map<String, dynamic> json) {
  return _AlbumDTO.fromJson(json);
}

/// @nodoc
class _$AlbumDTOTearOff {
  const _$AlbumDTOTearOff();

// ignore: unused_element
  _AlbumDTO call(
      {@JsonKey(ignore: false) String id,
      @required String title,
      @required String releaseDate,
      @required int upc,
      @required int artistId}) {
    return _AlbumDTO(
      id: id,
      title: title,
      releaseDate: releaseDate,
      upc: upc,
      artistId: artistId,
    );
  }

// ignore: unused_element
  AlbumDTO fromJson(Map<String, Object> json) {
    return AlbumDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AlbumDTO = _$AlbumDTOTearOff();

/// @nodoc
mixin _$AlbumDTO {
  @JsonKey(ignore: false)
  String get id;
  String get title;
  String get releaseDate;
  int get upc;
  int get artistId;

  Map<String, dynamic> toJson();
  $AlbumDTOCopyWith<AlbumDTO> get copyWith;
}

/// @nodoc
abstract class $AlbumDTOCopyWith<$Res> {
  factory $AlbumDTOCopyWith(AlbumDTO value, $Res Function(AlbumDTO) then) =
      _$AlbumDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: false) String id,
      String title,
      String releaseDate,
      int upc,
      int artistId});
}

/// @nodoc
class _$AlbumDTOCopyWithImpl<$Res> implements $AlbumDTOCopyWith<$Res> {
  _$AlbumDTOCopyWithImpl(this._value, this._then);

  final AlbumDTO _value;
  // ignore: unused_field
  final $Res Function(AlbumDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object upc = freezed,
    Object artistId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      upc: upc == freezed ? _value.upc : upc as int,
      artistId: artistId == freezed ? _value.artistId : artistId as int,
    ));
  }
}

/// @nodoc
abstract class _$AlbumDTOCopyWith<$Res> implements $AlbumDTOCopyWith<$Res> {
  factory _$AlbumDTOCopyWith(_AlbumDTO value, $Res Function(_AlbumDTO) then) =
      __$AlbumDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: false) String id,
      String title,
      String releaseDate,
      int upc,
      int artistId});
}

/// @nodoc
class __$AlbumDTOCopyWithImpl<$Res> extends _$AlbumDTOCopyWithImpl<$Res>
    implements _$AlbumDTOCopyWith<$Res> {
  __$AlbumDTOCopyWithImpl(_AlbumDTO _value, $Res Function(_AlbumDTO) _then)
      : super(_value, (v) => _then(v as _AlbumDTO));

  @override
  _AlbumDTO get _value => super._value as _AlbumDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object upc = freezed,
    Object artistId = freezed,
  }) {
    return _then(_AlbumDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      upc: upc == freezed ? _value.upc : upc as int,
      artistId: artistId == freezed ? _value.artistId : artistId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AlbumDTO extends _AlbumDTO {
  const _$_AlbumDTO(
      {@JsonKey(ignore: false) this.id,
      @required this.title,
      @required this.releaseDate,
      @required this.upc,
      @required this.artistId})
      : assert(title != null),
        assert(releaseDate != null),
        assert(upc != null),
        assert(artistId != null),
        super._();

  factory _$_AlbumDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AlbumDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final String title;
  @override
  final String releaseDate;
  @override
  final int upc;
  @override
  final int artistId;

  @override
  String toString() {
    return 'AlbumDTO(id: $id, title: $title, releaseDate: $releaseDate, upc: $upc, artistId: $artistId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.upc, upc) ||
                const DeepCollectionEquality().equals(other.upc, upc)) &&
            (identical(other.artistId, artistId) ||
                const DeepCollectionEquality()
                    .equals(other.artistId, artistId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(upc) ^
      const DeepCollectionEquality().hash(artistId);

  @override
  _$AlbumDTOCopyWith<_AlbumDTO> get copyWith =>
      __$AlbumDTOCopyWithImpl<_AlbumDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlbumDTOToJson(this);
  }
}

abstract class _AlbumDTO extends AlbumDTO {
  const _AlbumDTO._() : super._();
  const factory _AlbumDTO(
      {@JsonKey(ignore: false) String id,
      @required String title,
      @required String releaseDate,
      @required int upc,
      @required int artistId}) = _$_AlbumDTO;

  factory _AlbumDTO.fromJson(Map<String, dynamic> json) = _$_AlbumDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  String get title;
  @override
  String get releaseDate;
  @override
  int get upc;
  @override
  int get artistId;
  @override
  _$AlbumDTOCopyWith<_AlbumDTO> get copyWith;
}
