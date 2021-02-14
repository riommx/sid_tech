// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'track.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrackTearOff {
  const _$TrackTearOff();

// ignore: unused_element
  _Track call(
      {@required VOInt id,
      @required VOString title,
      @required VOInt duration,
      @required VOInt albumId,
      @required VOInt artistId,
      @required VOString previewURL}) {
    return _Track(
      id: id,
      title: title,
      duration: duration,
      albumId: albumId,
      artistId: artistId,
      previewURL: previewURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Track = _$TrackTearOff();

/// @nodoc
mixin _$Track {
  VOInt get id;
  VOString get title;
  VOInt get duration; // seconds
  VOInt get albumId;
  VOInt get artistId;
  VOString get previewURL;

  $TrackCopyWith<Track> get copyWith;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res>;
  $Res call(
      {VOInt id,
      VOString title,
      VOInt duration,
      VOInt albumId,
      VOInt artistId,
      VOString previewURL});
}

/// @nodoc
class _$TrackCopyWithImpl<$Res> implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  final Track _value;
  // ignore: unused_field
  final $Res Function(Track) _then;

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
      id: id == freezed ? _value.id : id as VOInt,
      title: title == freezed ? _value.title : title as VOString,
      duration: duration == freezed ? _value.duration : duration as VOInt,
      albumId: albumId == freezed ? _value.albumId : albumId as VOInt,
      artistId: artistId == freezed ? _value.artistId : artistId as VOInt,
      previewURL:
          previewURL == freezed ? _value.previewURL : previewURL as VOString,
    ));
  }
}

/// @nodoc
abstract class _$TrackCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$TrackCopyWith(_Track value, $Res Function(_Track) then) =
      __$TrackCopyWithImpl<$Res>;
  @override
  $Res call(
      {VOInt id,
      VOString title,
      VOInt duration,
      VOInt albumId,
      VOInt artistId,
      VOString previewURL});
}

/// @nodoc
class __$TrackCopyWithImpl<$Res> extends _$TrackCopyWithImpl<$Res>
    implements _$TrackCopyWith<$Res> {
  __$TrackCopyWithImpl(_Track _value, $Res Function(_Track) _then)
      : super(_value, (v) => _then(v as _Track));

  @override
  _Track get _value => super._value as _Track;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object duration = freezed,
    Object albumId = freezed,
    Object artistId = freezed,
    Object previewURL = freezed,
  }) {
    return _then(_Track(
      id: id == freezed ? _value.id : id as VOInt,
      title: title == freezed ? _value.title : title as VOString,
      duration: duration == freezed ? _value.duration : duration as VOInt,
      albumId: albumId == freezed ? _value.albumId : albumId as VOInt,
      artistId: artistId == freezed ? _value.artistId : artistId as VOInt,
      previewURL:
          previewURL == freezed ? _value.previewURL : previewURL as VOString,
    ));
  }
}

/// @nodoc
class _$_Track extends _Track {
  const _$_Track(
      {@required this.id,
      @required this.title,
      @required this.duration,
      @required this.albumId,
      @required this.artistId,
      @required this.previewURL})
      : assert(id != null),
        assert(title != null),
        assert(duration != null),
        assert(albumId != null),
        assert(artistId != null),
        assert(previewURL != null),
        super._();

  @override
  final VOInt id;
  @override
  final VOString title;
  @override
  final VOInt duration;
  @override // seconds
  final VOInt albumId;
  @override
  final VOInt artistId;
  @override
  final VOString previewURL;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Track &&
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
  _$TrackCopyWith<_Track> get copyWith =>
      __$TrackCopyWithImpl<_Track>(this, _$identity);
}

abstract class _Track extends Track {
  const _Track._() : super._();
  const factory _Track(
      {@required VOInt id,
      @required VOString title,
      @required VOInt duration,
      @required VOInt albumId,
      @required VOInt artistId,
      @required VOString previewURL}) = _$_Track;

  @override
  VOInt get id;
  @override
  VOString get title;
  @override
  VOInt get duration;
  @override // seconds
  VOInt get albumId;
  @override
  VOInt get artistId;
  @override
  VOString get previewURL;
  @override
  _$TrackCopyWith<_Track> get copyWith;
}
