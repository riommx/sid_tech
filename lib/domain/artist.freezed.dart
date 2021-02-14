// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArtistTearOff {
  const _$ArtistTearOff();

// ignore: unused_element
  _Artist call({@required VOInt id, @required VOString name}) {
    return _Artist(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Artist = _$ArtistTearOff();

/// @nodoc
mixin _$Artist {
  VOInt get id;
  VOString get name;

  $ArtistCopyWith<Artist> get copyWith;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res>;
  $Res call({VOInt id, VOString name});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res> implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  final Artist _value;
  // ignore: unused_field
  final $Res Function(Artist) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as VOInt,
      name: name == freezed ? _value.name : name as VOString,
    ));
  }
}

/// @nodoc
abstract class _$ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$ArtistCopyWith(_Artist value, $Res Function(_Artist) then) =
      __$ArtistCopyWithImpl<$Res>;
  @override
  $Res call({VOInt id, VOString name});
}

/// @nodoc
class __$ArtistCopyWithImpl<$Res> extends _$ArtistCopyWithImpl<$Res>
    implements _$ArtistCopyWith<$Res> {
  __$ArtistCopyWithImpl(_Artist _value, $Res Function(_Artist) _then)
      : super(_value, (v) => _then(v as _Artist));

  @override
  _Artist get _value => super._value as _Artist;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_Artist(
      id: id == freezed ? _value.id : id as VOInt,
      name: name == freezed ? _value.name : name as VOString,
    ));
  }
}

/// @nodoc
class _$_Artist extends _Artist {
  const _$_Artist({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null),
        super._();

  @override
  final VOInt id;
  @override
  final VOString name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Artist &&
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
  _$ArtistCopyWith<_Artist> get copyWith =>
      __$ArtistCopyWithImpl<_Artist>(this, _$identity);
}

abstract class _Artist extends Artist {
  const _Artist._() : super._();
  const factory _Artist({@required VOInt id, @required VOString name}) =
      _$_Artist;

  @override
  VOInt get id;
  @override
  VOString get name;
  @override
  _$ArtistCopyWith<_Artist> get copyWith;
}
