// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'track_files.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrackFilesTearOff {
  const _$TrackFilesTearOff();

// ignore: unused_element
  _TrackFiles call({@required VOInt id, @required List<VOString> files}) {
    return _TrackFiles(
      id: id,
      files: files,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrackFiles = _$TrackFilesTearOff();

/// @nodoc
mixin _$TrackFiles {
  VOInt get id;
  List<VOString> get files;

  $TrackFilesCopyWith<TrackFiles> get copyWith;
}

/// @nodoc
abstract class $TrackFilesCopyWith<$Res> {
  factory $TrackFilesCopyWith(
          TrackFiles value, $Res Function(TrackFiles) then) =
      _$TrackFilesCopyWithImpl<$Res>;
  $Res call({VOInt id, List<VOString> files});
}

/// @nodoc
class _$TrackFilesCopyWithImpl<$Res> implements $TrackFilesCopyWith<$Res> {
  _$TrackFilesCopyWithImpl(this._value, this._then);

  final TrackFiles _value;
  // ignore: unused_field
  final $Res Function(TrackFiles) _then;

  @override
  $Res call({
    Object id = freezed,
    Object files = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as VOInt,
      files: files == freezed ? _value.files : files as List<VOString>,
    ));
  }
}

/// @nodoc
abstract class _$TrackFilesCopyWith<$Res> implements $TrackFilesCopyWith<$Res> {
  factory _$TrackFilesCopyWith(
          _TrackFiles value, $Res Function(_TrackFiles) then) =
      __$TrackFilesCopyWithImpl<$Res>;
  @override
  $Res call({VOInt id, List<VOString> files});
}

/// @nodoc
class __$TrackFilesCopyWithImpl<$Res> extends _$TrackFilesCopyWithImpl<$Res>
    implements _$TrackFilesCopyWith<$Res> {
  __$TrackFilesCopyWithImpl(
      _TrackFiles _value, $Res Function(_TrackFiles) _then)
      : super(_value, (v) => _then(v as _TrackFiles));

  @override
  _TrackFiles get _value => super._value as _TrackFiles;

  @override
  $Res call({
    Object id = freezed,
    Object files = freezed,
  }) {
    return _then(_TrackFiles(
      id: id == freezed ? _value.id : id as VOInt,
      files: files == freezed ? _value.files : files as List<VOString>,
    ));
  }
}

/// @nodoc
class _$_TrackFiles extends _TrackFiles {
  const _$_TrackFiles({@required this.id, @required this.files})
      : assert(id != null),
        assert(files != null),
        super._();

  @override
  final VOInt id;
  @override
  final List<VOString> files;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackFiles &&
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
  _$TrackFilesCopyWith<_TrackFiles> get copyWith =>
      __$TrackFilesCopyWithImpl<_TrackFiles>(this, _$identity);
}

abstract class _TrackFiles extends TrackFiles {
  const _TrackFiles._() : super._();
  const factory _TrackFiles(
      {@required VOInt id, @required List<VOString> files}) = _$_TrackFiles;

  @override
  VOInt get id;
  @override
  List<VOString> get files;
  @override
  _$TrackFilesCopyWith<_TrackFiles> get copyWith;
}
