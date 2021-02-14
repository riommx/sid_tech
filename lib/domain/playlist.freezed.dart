// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlaylistTearOff {
  const _$PlaylistTearOff();

// ignore: unused_element
  _Playlist call(
      {@required VOInt id,
      @required VOString name,
      @required List<VOInt> tracks}) {
    return _Playlist(
      id: id,
      name: name,
      tracks: tracks,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Playlist = _$PlaylistTearOff();

/// @nodoc
mixin _$Playlist {
  VOInt get id;
  VOString get name;
  List<VOInt> get tracks;

  $PlaylistCopyWith<Playlist> get copyWith;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
  $Res call({VOInt id, VOString name, List<VOInt> tracks});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object tracks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as VOInt,
      name: name == freezed ? _value.name : name as VOString,
      tracks: tracks == freezed ? _value.tracks : tracks as List<VOInt>,
    ));
  }
}

/// @nodoc
abstract class _$PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$PlaylistCopyWith(_Playlist value, $Res Function(_Playlist) then) =
      __$PlaylistCopyWithImpl<$Res>;
  @override
  $Res call({VOInt id, VOString name, List<VOInt> tracks});
}

/// @nodoc
class __$PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$PlaylistCopyWith<$Res> {
  __$PlaylistCopyWithImpl(_Playlist _value, $Res Function(_Playlist) _then)
      : super(_value, (v) => _then(v as _Playlist));

  @override
  _Playlist get _value => super._value as _Playlist;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object tracks = freezed,
  }) {
    return _then(_Playlist(
      id: id == freezed ? _value.id : id as VOInt,
      name: name == freezed ? _value.name : name as VOString,
      tracks: tracks == freezed ? _value.tracks : tracks as List<VOInt>,
    ));
  }
}

/// @nodoc
class _$_Playlist extends _Playlist {
  const _$_Playlist(
      {@required this.id, @required this.name, @required this.tracks})
      : assert(id != null),
        assert(name != null),
        assert(tracks != null),
        super._();

  @override
  final VOInt id;
  @override
  final VOString name;
  @override
  final List<VOInt> tracks;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Playlist &&
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
  _$PlaylistCopyWith<_Playlist> get copyWith =>
      __$PlaylistCopyWithImpl<_Playlist>(this, _$identity);
}

abstract class _Playlist extends Playlist {
  const _Playlist._() : super._();
  const factory _Playlist(
      {@required VOInt id,
      @required VOString name,
      @required List<VOInt> tracks}) = _$_Playlist;

  @override
  VOInt get id;
  @override
  VOString get name;
  @override
  List<VOInt> get tracks;
  @override
  _$PlaylistCopyWith<_Playlist> get copyWith;
}
