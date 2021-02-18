// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'track_files_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TrackFilesDTO _$TrackFilesDTOFromJson(Map<String, dynamic> json) {
  return _TrackFilesDTO.fromJson(json);
}

/// @nodoc
class _$TrackFilesDTOTearOff {
  const _$TrackFilesDTOTearOff();

// ignore: unused_element
  _TrackFilesDTO call(
      {@JsonKey(ignore: false) String id, @required List<String> files}) {
    return _TrackFilesDTO(
      id: id,
      files: files,
    );
  }

// ignore: unused_element
  TrackFilesDTO fromJson(Map<String, Object> json) {
    return TrackFilesDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TrackFilesDTO = _$TrackFilesDTOTearOff();

/// @nodoc
mixin _$TrackFilesDTO {
  @JsonKey(ignore: false)
  String get id;
  List<String> get files;

  Map<String, dynamic> toJson();
  $TrackFilesDTOCopyWith<TrackFilesDTO> get copyWith;
}

/// @nodoc
abstract class $TrackFilesDTOCopyWith<$Res> {
  factory $TrackFilesDTOCopyWith(
          TrackFilesDTO value, $Res Function(TrackFilesDTO) then) =
      _$TrackFilesDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: false) String id, List<String> files});
}

/// @nodoc
class _$TrackFilesDTOCopyWithImpl<$Res>
    implements $TrackFilesDTOCopyWith<$Res> {
  _$TrackFilesDTOCopyWithImpl(this._value, this._then);

  final TrackFilesDTO _value;
  // ignore: unused_field
  final $Res Function(TrackFilesDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object files = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      files: files == freezed ? _value.files : files as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TrackFilesDTOCopyWith<$Res>
    implements $TrackFilesDTOCopyWith<$Res> {
  factory _$TrackFilesDTOCopyWith(
          _TrackFilesDTO value, $Res Function(_TrackFilesDTO) then) =
      __$TrackFilesDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: false) String id, List<String> files});
}

/// @nodoc
class __$TrackFilesDTOCopyWithImpl<$Res>
    extends _$TrackFilesDTOCopyWithImpl<$Res>
    implements _$TrackFilesDTOCopyWith<$Res> {
  __$TrackFilesDTOCopyWithImpl(
      _TrackFilesDTO _value, $Res Function(_TrackFilesDTO) _then)
      : super(_value, (v) => _then(v as _TrackFilesDTO));

  @override
  _TrackFilesDTO get _value => super._value as _TrackFilesDTO;

  @override
  $Res call({
    Object id = freezed,
    Object files = freezed,
  }) {
    return _then(_TrackFilesDTO(
      id: id == freezed ? _value.id : id as String,
      files: files == freezed ? _value.files : files as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TrackFilesDTO extends _TrackFilesDTO {
  const _$_TrackFilesDTO(
      {@JsonKey(ignore: false) this.id, @required this.files})
      : assert(files != null),
        super._();

  factory _$_TrackFilesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TrackFilesDTOFromJson(json);

  @override
  @JsonKey(ignore: false)
  final String id;
  @override
  final List<String> files;

  @override
  String toString() {
    return 'TrackFilesDTO(id: $id, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackFilesDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(files);

  @override
  _$TrackFilesDTOCopyWith<_TrackFilesDTO> get copyWith =>
      __$TrackFilesDTOCopyWithImpl<_TrackFilesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrackFilesDTOToJson(this);
  }
}

abstract class _TrackFilesDTO extends TrackFilesDTO {
  const _TrackFilesDTO._() : super._();
  const factory _TrackFilesDTO(
      {@JsonKey(ignore: false) String id,
      @required List<String> files}) = _$_TrackFilesDTO;

  factory _TrackFilesDTO.fromJson(Map<String, dynamic> json) =
      _$_TrackFilesDTO.fromJson;

  @override
  @JsonKey(ignore: false)
  String get id;
  @override
  List<String> get files;
  @override
  _$TrackFilesDTOCopyWith<_TrackFilesDTO> get copyWith;
}
