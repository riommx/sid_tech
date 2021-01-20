// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  NullValue<T> nullValue<T>({@required Type type}) {
    return NullValue<T>(
      type: type,
    );
  }

// ignore: unused_element
  InvalidRegex<T> invalidRegex<T>(
      {@required T failedValue, @required String regex, @required Type type}) {
    return InvalidRegex<T>(
      failedValue: failedValue,
      regex: regex,
      type: type,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortLength<T> shortLength<T>(
      {@required T failedValue,
      @required int length,
      @required int minLength}) {
    return ShortLength<T>(
      failedValue: failedValue,
      length: length,
      minLength: minLength,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue,
      @required int length,
      @required int maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      length: length,
      maxLength: maxLength,
    );
  }

// ignore: unused_element
  InvalidDateTime<T> invalidDateTime<T>({@required T failedValue}) {
    return InvalidDateTime<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ValueNotInt<T> valueNotInt<T>({@required T failedValue}) {
    return ValueNotInt<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ValueNotDouble<T> valueNotDouble<T>({@required T failedValue}) {
    return ValueNotDouble<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  OverMaxValue<T> overMaxValue<T>(
      {@required T failedValue, @required String max}) {
    return OverMaxValue<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  SubMinValue<T> subMinValue<T>(
      {@required T failedValue, @required String min}) {
    return SubMinValue<T>(
      failedValue: failedValue,
      min: min,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $NullValueCopyWith<T, $Res> {
  factory $NullValueCopyWith(
          NullValue<T> value, $Res Function(NullValue<T>) then) =
      _$NullValueCopyWithImpl<T, $Res>;
  $Res call({Type type});
}

/// @nodoc
class _$NullValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NullValueCopyWith<T, $Res> {
  _$NullValueCopyWithImpl(
      NullValue<T> _value, $Res Function(NullValue<T>) _then)
      : super(_value, (v) => _then(v as NullValue<T>));

  @override
  NullValue<T> get _value => super._value as NullValue<T>;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(NullValue<T>(
      type: type == freezed ? _value.type : type as Type,
    ));
  }
}

/// @nodoc
class _$NullValue<T> implements NullValue<T> {
  const _$NullValue({@required this.type}) : assert(type != null);

  @override
  final Type type;

  @override
  String toString() {
    return 'ValueFailure<$T>.nullValue(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NullValue<T> &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  $NullValueCopyWith<T, NullValue<T>> get copyWith =>
      _$NullValueCopyWithImpl<T, NullValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return nullValue(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nullValue != null) {
      return nullValue(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return nullValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nullValue != null) {
      return nullValue(this);
    }
    return orElse();
  }
}

abstract class NullValue<T> implements ValueFailure<T> {
  const factory NullValue({@required Type type}) = _$NullValue<T>;

  Type get type;
  $NullValueCopyWith<T, NullValue<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidRegexCopyWith<T, $Res> {
  factory $InvalidRegexCopyWith(
          InvalidRegex<T> value, $Res Function(InvalidRegex<T>) then) =
      _$InvalidRegexCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String regex, Type type});
}

/// @nodoc
class _$InvalidRegexCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidRegexCopyWith<T, $Res> {
  _$InvalidRegexCopyWithImpl(
      InvalidRegex<T> _value, $Res Function(InvalidRegex<T>) _then)
      : super(_value, (v) => _then(v as InvalidRegex<T>));

  @override
  InvalidRegex<T> get _value => super._value as InvalidRegex<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object regex = freezed,
    Object type = freezed,
  }) {
    return _then(InvalidRegex<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      regex: regex == freezed ? _value.regex : regex as String,
      type: type == freezed ? _value.type : type as Type,
    ));
  }
}

/// @nodoc
class _$InvalidRegex<T> implements InvalidRegex<T> {
  const _$InvalidRegex(
      {@required this.failedValue, @required this.regex, @required this.type})
      : assert(failedValue != null),
        assert(regex != null),
        assert(type != null);

  @override
  final T failedValue;
  @override
  final String regex;
  @override
  final Type type;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidRegex(failedValue: $failedValue, regex: $regex, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidRegex<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.regex, regex) ||
                const DeepCollectionEquality().equals(other.regex, regex)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(regex) ^
      const DeepCollectionEquality().hash(type);

  @override
  $InvalidRegexCopyWith<T, InvalidRegex<T>> get copyWith =>
      _$InvalidRegexCopyWithImpl<T, InvalidRegex<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return invalidRegex(failedValue, regex, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidRegex != null) {
      return invalidRegex(failedValue, regex, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return invalidRegex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidRegex != null) {
      return invalidRegex(this);
    }
    return orElse();
  }
}

abstract class InvalidRegex<T> implements ValueFailure<T> {
  const factory InvalidRegex(
      {@required T failedValue,
      @required String regex,
      @required Type type}) = _$InvalidRegex<T>;

  T get failedValue;
  String get regex;
  Type get type;
  $InvalidRegexCopyWith<T, InvalidRegex<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  T get failedValue;
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  T get failedValue;
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

/// @nodoc
abstract class $ShortLengthCopyWith<T, $Res> {
  factory $ShortLengthCopyWith(
          ShortLength<T> value, $Res Function(ShortLength<T>) then) =
      _$ShortLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int length, int minLength});
}

/// @nodoc
class _$ShortLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortLengthCopyWith<T, $Res> {
  _$ShortLengthCopyWithImpl(
      ShortLength<T> _value, $Res Function(ShortLength<T>) _then)
      : super(_value, (v) => _then(v as ShortLength<T>));

  @override
  ShortLength<T> get _value => super._value as ShortLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object length = freezed,
    Object minLength = freezed,
  }) {
    return _then(ShortLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      length: length == freezed ? _value.length : length as int,
      minLength: minLength == freezed ? _value.minLength : minLength as int,
    ));
  }
}

/// @nodoc
class _$ShortLength<T> implements ShortLength<T> {
  const _$ShortLength(
      {@required this.failedValue,
      @required this.length,
      @required this.minLength})
      : assert(failedValue != null),
        assert(length != null),
        assert(minLength != null);

  @override
  final T failedValue;
  @override
  final int length;
  @override
  final int minLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, length: $length, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.minLength, minLength) ||
                const DeepCollectionEquality()
                    .equals(other.minLength, minLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(minLength);

  @override
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith =>
      _$ShortLengthCopyWithImpl<T, ShortLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return shortLength(failedValue, length, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortLength != null) {
      return shortLength(failedValue, length, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class ShortLength<T> implements ValueFailure<T> {
  const factory ShortLength(
      {@required T failedValue,
      @required int length,
      @required int minLength}) = _$ShortLength<T>;

  T get failedValue;
  int get length;
  int get minLength;
  $ShortLengthCopyWith<T, ShortLength<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int length, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object length = freezed,
    Object maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      length: length == freezed ? _value.length : length as int,
      maxLength: maxLength == freezed ? _value.maxLength : maxLength as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength(
      {@required this.failedValue,
      @required this.length,
      @required this.maxLength})
      : assert(failedValue != null),
        assert(length != null),
        assert(maxLength != null);

  @override
  final T failedValue;
  @override
  final int length;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, length: $length, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(maxLength);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return exceedingLength(failedValue, length, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, length, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {@required T failedValue,
      @required int length,
      @required int maxLength}) = _$ExceedingLength<T>;

  T get failedValue;
  int get length;
  int get maxLength;
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidDateTimeCopyWith<T, $Res> {
  factory $InvalidDateTimeCopyWith(
          InvalidDateTime<T> value, $Res Function(InvalidDateTime<T>) then) =
      _$InvalidDateTimeCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidDateTimeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidDateTimeCopyWith<T, $Res> {
  _$InvalidDateTimeCopyWithImpl(
      InvalidDateTime<T> _value, $Res Function(InvalidDateTime<T>) _then)
      : super(_value, (v) => _then(v as InvalidDateTime<T>));

  @override
  InvalidDateTime<T> get _value => super._value as InvalidDateTime<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidDateTime<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidDateTime<T> implements InvalidDateTime<T> {
  const _$InvalidDateTime({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateTime(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidDateTime<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidDateTimeCopyWith<T, InvalidDateTime<T>> get copyWith =>
      _$InvalidDateTimeCopyWithImpl<T, InvalidDateTime<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return invalidDateTime(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateTime != null) {
      return invalidDateTime(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return invalidDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidDateTime != null) {
      return invalidDateTime(this);
    }
    return orElse();
  }
}

abstract class InvalidDateTime<T> implements ValueFailure<T> {
  const factory InvalidDateTime({@required T failedValue}) =
      _$InvalidDateTime<T>;

  T get failedValue;
  $InvalidDateTimeCopyWith<T, InvalidDateTime<T>> get copyWith;
}

/// @nodoc
abstract class $ValueNotIntCopyWith<T, $Res> {
  factory $ValueNotIntCopyWith(
          ValueNotInt<T> value, $Res Function(ValueNotInt<T>) then) =
      _$ValueNotIntCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueNotIntCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueNotIntCopyWith<T, $Res> {
  _$ValueNotIntCopyWithImpl(
      ValueNotInt<T> _value, $Res Function(ValueNotInt<T>) _then)
      : super(_value, (v) => _then(v as ValueNotInt<T>));

  @override
  ValueNotInt<T> get _value => super._value as ValueNotInt<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ValueNotInt<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ValueNotInt<T> implements ValueNotInt<T> {
  const _$ValueNotInt({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.valueNotInt(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueNotInt<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ValueNotIntCopyWith<T, ValueNotInt<T>> get copyWith =>
      _$ValueNotIntCopyWithImpl<T, ValueNotInt<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return valueNotInt(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueNotInt != null) {
      return valueNotInt(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return valueNotInt(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueNotInt != null) {
      return valueNotInt(this);
    }
    return orElse();
  }
}

abstract class ValueNotInt<T> implements ValueFailure<T> {
  const factory ValueNotInt({@required T failedValue}) = _$ValueNotInt<T>;

  T get failedValue;
  $ValueNotIntCopyWith<T, ValueNotInt<T>> get copyWith;
}

/// @nodoc
abstract class $ValueNotDoubleCopyWith<T, $Res> {
  factory $ValueNotDoubleCopyWith(
          ValueNotDouble<T> value, $Res Function(ValueNotDouble<T>) then) =
      _$ValueNotDoubleCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueNotDoubleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueNotDoubleCopyWith<T, $Res> {
  _$ValueNotDoubleCopyWithImpl(
      ValueNotDouble<T> _value, $Res Function(ValueNotDouble<T>) _then)
      : super(_value, (v) => _then(v as ValueNotDouble<T>));

  @override
  ValueNotDouble<T> get _value => super._value as ValueNotDouble<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ValueNotDouble<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ValueNotDouble<T> implements ValueNotDouble<T> {
  const _$ValueNotDouble({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.valueNotDouble(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValueNotDouble<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ValueNotDoubleCopyWith<T, ValueNotDouble<T>> get copyWith =>
      _$ValueNotDoubleCopyWithImpl<T, ValueNotDouble<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return valueNotDouble(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueNotDouble != null) {
      return valueNotDouble(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return valueNotDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueNotDouble != null) {
      return valueNotDouble(this);
    }
    return orElse();
  }
}

abstract class ValueNotDouble<T> implements ValueFailure<T> {
  const factory ValueNotDouble({@required T failedValue}) = _$ValueNotDouble<T>;

  T get failedValue;
  $ValueNotDoubleCopyWith<T, ValueNotDouble<T>> get copyWith;
}

/// @nodoc
abstract class $OverMaxValueCopyWith<T, $Res> {
  factory $OverMaxValueCopyWith(
          OverMaxValue<T> value, $Res Function(OverMaxValue<T>) then) =
      _$OverMaxValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String max});
}

/// @nodoc
class _$OverMaxValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $OverMaxValueCopyWith<T, $Res> {
  _$OverMaxValueCopyWithImpl(
      OverMaxValue<T> _value, $Res Function(OverMaxValue<T>) _then)
      : super(_value, (v) => _then(v as OverMaxValue<T>));

  @override
  OverMaxValue<T> get _value => super._value as OverMaxValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(OverMaxValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as String,
    ));
  }
}

/// @nodoc
class _$OverMaxValue<T> implements OverMaxValue<T> {
  const _$OverMaxValue({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final String max;

  @override
  String toString() {
    return 'ValueFailure<$T>.overMaxValue(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OverMaxValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $OverMaxValueCopyWith<T, OverMaxValue<T>> get copyWith =>
      _$OverMaxValueCopyWithImpl<T, OverMaxValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return overMaxValue(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (overMaxValue != null) {
      return overMaxValue(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return overMaxValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (overMaxValue != null) {
      return overMaxValue(this);
    }
    return orElse();
  }
}

abstract class OverMaxValue<T> implements ValueFailure<T> {
  const factory OverMaxValue({@required T failedValue, @required String max}) =
      _$OverMaxValue<T>;

  T get failedValue;
  String get max;
  $OverMaxValueCopyWith<T, OverMaxValue<T>> get copyWith;
}

/// @nodoc
abstract class $SubMinValueCopyWith<T, $Res> {
  factory $SubMinValueCopyWith(
          SubMinValue<T> value, $Res Function(SubMinValue<T>) then) =
      _$SubMinValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String min});
}

/// @nodoc
class _$SubMinValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $SubMinValueCopyWith<T, $Res> {
  _$SubMinValueCopyWithImpl(
      SubMinValue<T> _value, $Res Function(SubMinValue<T>) _then)
      : super(_value, (v) => _then(v as SubMinValue<T>));

  @override
  SubMinValue<T> get _value => super._value as SubMinValue<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object min = freezed,
  }) {
    return _then(SubMinValue<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      min: min == freezed ? _value.min : min as String,
    ));
  }
}

/// @nodoc
class _$SubMinValue<T> implements SubMinValue<T> {
  const _$SubMinValue({@required this.failedValue, @required this.min})
      : assert(failedValue != null),
        assert(min != null);

  @override
  final T failedValue;
  @override
  final String min;

  @override
  String toString() {
    return 'ValueFailure<$T>.subMinValue(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubMinValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(min);

  @override
  $SubMinValueCopyWith<T, SubMinValue<T>> get copyWith =>
      _$SubMinValueCopyWithImpl<T, SubMinValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return subMinValue(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subMinValue != null) {
      return subMinValue(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return subMinValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (subMinValue != null) {
      return subMinValue(this);
    }
    return orElse();
  }
}

abstract class SubMinValue<T> implements ValueFailure<T> {
  const factory SubMinValue({@required T failedValue, @required String min}) =
      _$SubMinValue<T>;

  T get failedValue;
  String get min;
  $SubMinValueCopyWith<T, SubMinValue<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult invalidRegex(T failedValue, String regex, Type type),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult invalidDateTime(T failedValue),
    @required TResult valueNotInt(T failedValue),
    @required TResult valueNotDouble(T failedValue),
    @required TResult overMaxValue(T failedValue, String max),
    @required TResult subMinValue(T failedValue, String min),
    @required TResult listTooLong(T failedValue, int max),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult invalidRegex(T failedValue, String regex, Type type),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult invalidDateTime(T failedValue),
    TResult valueNotInt(T failedValue),
    TResult valueNotDouble(T failedValue),
    TResult overMaxValue(T failedValue, String max),
    TResult subMinValue(T failedValue, String min),
    TResult listTooLong(T failedValue, int max),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult invalidRegex(InvalidRegex<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult invalidDateTime(InvalidDateTime<T> value),
    @required TResult valueNotInt(ValueNotInt<T> value),
    @required TResult valueNotDouble(ValueNotDouble<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
  }) {
    assert(nullValue != null);
    assert(invalidRegex != null);
    assert(empty != null);
    assert(multiline != null);
    assert(shortLength != null);
    assert(exceedingLength != null);
    assert(invalidDateTime != null);
    assert(valueNotInt != null);
    assert(valueNotDouble != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(listTooLong != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult invalidRegex(InvalidRegex<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult invalidDateTime(InvalidDateTime<T> value),
    TResult valueNotInt(ValueNotInt<T> value),
    TResult valueNotDouble(ValueNotDouble<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult listTooLong(ListTooLong<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  T get failedValue;
  int get max;
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}
