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
  OverMaxValue<T> overMaxValue<T>(
      {@required T failedValue, @required int max}) {
    return OverMaxValue<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  SubMinValue<T> subMinValue<T>({@required T failedValue, @required int min}) {
    return SubMinValue<T>(
      failedValue: failedValue,
      min: min,
    );
  }

// ignore: unused_element
  IntRegex<T> invalidRegex<T>(
      {@required T failedValue, @required String regex}) {
    return IntRegex<T>(
      failedValue: failedValue,
      regex: regex,
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
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return nullValue(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return nullValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
abstract class $OverMaxValueCopyWith<T, $Res> {
  factory $OverMaxValueCopyWith(
          OverMaxValue<T> value, $Res Function(OverMaxValue<T>) then) =
      _$OverMaxValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int max});
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
      max: max == freezed ? _value.max : max as int,
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
  final int max;

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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return overMaxValue(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return overMaxValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
  const factory OverMaxValue({@required T failedValue, @required int max}) =
      _$OverMaxValue<T>;

  T get failedValue;
  int get max;
  $OverMaxValueCopyWith<T, OverMaxValue<T>> get copyWith;
}

/// @nodoc
abstract class $SubMinValueCopyWith<T, $Res> {
  factory $SubMinValueCopyWith(
          SubMinValue<T> value, $Res Function(SubMinValue<T>) then) =
      _$SubMinValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int min});
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
      min: min == freezed ? _value.min : min as int,
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
  final int min;

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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return subMinValue(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return subMinValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
  const factory SubMinValue({@required T failedValue, @required int min}) =
      _$SubMinValue<T>;

  T get failedValue;
  int get min;
  $SubMinValueCopyWith<T, SubMinValue<T>> get copyWith;
}

/// @nodoc
abstract class $IntRegexCopyWith<T, $Res> {
  factory $IntRegexCopyWith(
          IntRegex<T> value, $Res Function(IntRegex<T>) then) =
      _$IntRegexCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String regex});
}

/// @nodoc
class _$IntRegexCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IntRegexCopyWith<T, $Res> {
  _$IntRegexCopyWithImpl(IntRegex<T> _value, $Res Function(IntRegex<T>) _then)
      : super(_value, (v) => _then(v as IntRegex<T>));

  @override
  IntRegex<T> get _value => super._value as IntRegex<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object regex = freezed,
  }) {
    return _then(IntRegex<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      regex: regex == freezed ? _value.regex : regex as String,
    ));
  }
}

/// @nodoc
class _$IntRegex<T> implements IntRegex<T> {
  const _$IntRegex({@required this.failedValue, @required this.regex})
      : assert(failedValue != null),
        assert(regex != null);

  @override
  final T failedValue;
  @override
  final String regex;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidRegex(failedValue: $failedValue, regex: $regex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IntRegex<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.regex, regex) ||
                const DeepCollectionEquality().equals(other.regex, regex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(regex);

  @override
  $IntRegexCopyWith<T, IntRegex<T>> get copyWith =>
      _$IntRegexCopyWithImpl<T, IntRegex<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidRegex(failedValue, regex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidRegex != null) {
      return invalidRegex(failedValue, regex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidRegex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidRegex != null) {
      return invalidRegex(this);
    }
    return orElse();
  }
}

abstract class IntRegex<T> implements ValueFailure<T> {
  const factory IntRegex({@required T failedValue, @required String regex}) =
      _$IntRegex<T>;

  T get failedValue;
  String get regex;
  $IntRegexCopyWith<T, IntRegex<T>> get copyWith;
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingLength(failedValue, length, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortLength(failedValue, length, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
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
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
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

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nullValue(Type type),
    @required TResult overMaxValue(T failedValue, int max),
    @required TResult subMinValue(T failedValue, int min),
    @required TResult invalidRegex(T failedValue, String regex),
    @required TResult exceedingLength(T failedValue, int length, int maxLength),
    @required TResult shortLength(T failedValue, int length, int minLength),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nullValue(Type type),
    TResult overMaxValue(T failedValue, int max),
    TResult subMinValue(T failedValue, int min),
    TResult invalidRegex(T failedValue, String regex),
    TResult exceedingLength(T failedValue, int length, int maxLength),
    TResult shortLength(T failedValue, int length, int minLength),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nullValue(NullValue<T> value),
    @required TResult overMaxValue(OverMaxValue<T> value),
    @required TResult subMinValue(SubMinValue<T> value),
    @required TResult invalidRegex(IntRegex<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult shortLength(ShortLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
  }) {
    assert(nullValue != null);
    assert(overMaxValue != null);
    assert(subMinValue != null);
    assert(invalidRegex != null);
    assert(exceedingLength != null);
    assert(shortLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nullValue(NullValue<T> value),
    TResult overMaxValue(OverMaxValue<T> value),
    TResult subMinValue(SubMinValue<T> value),
    TResult invalidRegex(IntRegex<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult shortLength(ShortLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  T get failedValue;
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}
