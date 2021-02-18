// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AlbumTearOff {
  const _$AlbumTearOff();

// ignore: unused_element
  _Album call(
      {@required VOInt id,
      @required VOString title,
      @required VOString releaseDate,
      @required VOInt upc,
      @required VOInt artistId}) {
    return _Album(
      id: id,
      title: title,
      releaseDate: releaseDate,
      upc: upc,
      artistId: artistId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Album = _$AlbumTearOff();

/// @nodoc
mixin _$Album {
  VOInt get id;
  VOString get title;
  VOString get releaseDate;
  VOInt get upc;
  VOInt get artistId;

  $AlbumCopyWith<Album> get copyWith;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res>;
  $Res call(
      {VOInt id,
      VOString title,
      VOString releaseDate,
      VOInt upc,
      VOInt artistId});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res> implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  final Album _value;
  // ignore: unused_field
  final $Res Function(Album) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object upc = freezed,
    Object artistId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as VOInt,
      title: title == freezed ? _value.title : title as VOString,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as VOString,
      upc: upc == freezed ? _value.upc : upc as VOInt,
      artistId: artistId == freezed ? _value.artistId : artistId as VOInt,
    ));
  }
}

/// @nodoc
abstract class _$AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$AlbumCopyWith(_Album value, $Res Function(_Album) then) =
      __$AlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {VOInt id,
      VOString title,
      VOString releaseDate,
      VOInt upc,
      VOInt artistId});
}

/// @nodoc
class __$AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res>
    implements _$AlbumCopyWith<$Res> {
  __$AlbumCopyWithImpl(_Album _value, $Res Function(_Album) _then)
      : super(_value, (v) => _then(v as _Album));

  @override
  _Album get _value => super._value as _Album;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object upc = freezed,
    Object artistId = freezed,
  }) {
    return _then(_Album(
      id: id == freezed ? _value.id : id as VOInt,
      title: title == freezed ? _value.title : title as VOString,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as VOString,
      upc: upc == freezed ? _value.upc : upc as VOInt,
      artistId: artistId == freezed ? _value.artistId : artistId as VOInt,
    ));
  }
}

/// @nodoc
class _$_Album extends _Album {
  const _$_Album(
      {@required this.id,
      @required this.title,
      @required this.releaseDate,
      @required this.upc,
      @required this.artistId})
      : assert(id != null),
        assert(title != null),
        assert(releaseDate != null),
        assert(upc != null),
        assert(artistId != null),
        super._();

  @override
  final VOInt id;
  @override
  final VOString title;
  @override
  final VOString releaseDate;
  @override
  final VOInt upc;
  @override
  final VOInt artistId;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Album &&
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
  _$AlbumCopyWith<_Album> get copyWith =>
      __$AlbumCopyWithImpl<_Album>(this, _$identity);
}

abstract class _Album extends Album {
  const _Album._() : super._();
  const factory _Album(
      {@required VOInt id,
      @required VOString title,
      @required VOString releaseDate,
      @required VOInt upc,
      @required VOInt artistId}) = _$_Album;

  @override
  VOInt get id;
  @override
  VOString get title;
  @override
  VOString get releaseDate;
  @override
  VOInt get upc;
  @override
  VOInt get artistId;
  @override
  _$AlbumCopyWith<_Album> get copyWith;
}
