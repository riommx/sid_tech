// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ArtistDTO _$ArtistDTOFromJson(Map<String, dynamic> json) {
  return _ArtistDTO.fromJson(json);
}

/// @nodoc
class _$ArtistDTOTearOff {
  const _$ArtistDTOTearOff();

// ignore: unused_element
  _ArtistDTO call({@JsonKey(ignore: false) String id, @required String name}) {
    return _ArtistDTO(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  ArtistDTO fromJson(Map<String, Object> json) {
    return ArtistDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ArtistDTO = _$ArtistDTOTearOff();

/// @nodoc
mixin _$ArtistDTO {
  @JsonKey(ignore: false)
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  $ArtistDTOCopyWith<ArtistDTO> get copyWith;
}

/// @nodoc
abstract class $ArtistDTOCopyWith<$Res> {
  factory $ArtistDTOCopyWith(ArtistDTO value, $Res Function(ArtistDTO) then) =
      _$ArtistDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: false) String id, String name});
}

/// @nodoc
class _$ArtistDTOCopyWithImpl<$Res> implements $ArtistDTOCopyWith<$Res> {
  _$ArtistDTOCopyWithImpl(this._value, this._then);

  final ArtistDTO _value;
  // ignore: unused_field
  final $Res Function(ArtistDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistDTOCopyWith<$Res> implements $ArtistDTOCopyWith<$Res> {
  factory _$ArtistDTOCopyWith(
          _ArtistDTO value, $Res Function(_ArtistDTO) then) =
      __$ArtistDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: false) String id, String name});
}

/// @nodoc
class __$ArtistDTOCopyWithImpl<$Res> extends _$ArtistDTOCopyWithImpl<$Res>
    implements _$ArtistDTOCopyWith<$Res> {
  __$ArtistDTOCopyWithImpl(_ArtistDTO _value, $Res Function(_ArtistDTO) _then)
      : super(_value, (v) => _then(v as _ArtistDTO));

  @override
  _ArtistDTO get _value => super._value as _ArtistDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_ArtistDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ArtistDTO extends _ArtistDTO {
  const _$_ArtistDTO({@JsonKey(ignore: false) this.id, @required this.name})
      : assert(name != null),
        super._();

  factory _$_ArtistDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ArtistDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ArtistDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArtistDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$ArtistDTOCopyWith<_ArtistDTO> get copyWith =>
      __$ArtistDTOCopyWithImpl<_ArtistDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArtistDTOToJson(this);
  }
}

abstract class _ArtistDTO extends ArtistDTO {
  const _ArtistDTO._() : super._();
  const factory _ArtistDTO(
      {@JsonKey(ignore: false) String id,
      @required String name}) = _$_ArtistDTO;

  factory _ArtistDTO.fromJson(Map<String, dynamic> json) =
      _$_ArtistDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  String get name;
  @override
  _$ArtistDTOCopyWith<_ArtistDTO> get copyWith;
}
