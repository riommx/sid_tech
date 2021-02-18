// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RepositoryFailureTearOff {
  const _$RepositoryFailureTearOff();

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
// ignore: unused_element
const $RepositoryFailure = _$RepositoryFailureTearOff();

/// @nodoc
mixin _$RepositoryFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RepositoryFailureCopyWith<$Res> {
  factory $RepositoryFailureCopyWith(
          RepositoryFailure value, $Res Function(RepositoryFailure) then) =
      _$RepositoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoryFailureCopyWithImpl<$Res>
    implements $RepositoryFailureCopyWith<$Res> {
  _$RepositoryFailureCopyWithImpl(this._value, this._then);

  final RepositoryFailure _value;
  // ignore: unused_field
  final $Res Function(RepositoryFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res>
    extends _$RepositoryFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'RepositoryFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(),
  }) {
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
  }) {
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements RepositoryFailure {
  const factory _Unexpected() = _$_Unexpected;
}
