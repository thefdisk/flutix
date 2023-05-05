// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_Empty<T>>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      __$$_EmptyCopyWithImpl<T, _$_Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required final T failedValue}) = _$_Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MultiLineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_MultiLineCopyWith(
          _$_MultiLine<T> value, $Res Function(_$_MultiLine<T>) then) =
      __$$_MultiLineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_MultiLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_MultiLine<T>>
    implements _$$_MultiLineCopyWith<T, $Res> {
  __$$_MultiLineCopyWithImpl(
      _$_MultiLine<T> _value, $Res Function(_$_MultiLine<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_MultiLine<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_MultiLine<T> implements _MultiLine<T> {
  const _$_MultiLine({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiLine<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiLineCopyWith<T, _$_MultiLine<T>> get copyWith =>
      __$$_MultiLineCopyWithImpl<T, _$_MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class _MultiLine<T> implements ValueFailure<T> {
  const factory _MultiLine({required final T failedValue}) = _$_MultiLine<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_MultiLineCopyWith<T, _$_MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail<T> value, $Res Function(_$_InvalidEmail<T>) then) =
      __$$_InvalidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidEmail<T>>
    implements _$$_InvalidEmailCopyWith<T, $Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail<T> _value, $Res Function(_$_InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_InvalidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidEmailCopyWith<T, _$_InvalidEmail<T>> get copyWith =>
      __$$_InvalidEmailCopyWithImpl<T, _$_InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({required final T failedValue}) =
      _$_InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidEmailCopyWith<T, _$_InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_ShortPasswordCopyWith(
          _$_ShortPassword<T> value, $Res Function(_$_ShortPassword<T>) then) =
      __$$_ShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_ShortPassword<T>>
    implements _$$_ShortPasswordCopyWith<T, $Res> {
  __$$_ShortPasswordCopyWithImpl(
      _$_ShortPassword<T> _value, $Res Function(_$_ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_ShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShortPasswordCopyWith<T, _$_ShortPassword<T>> get copyWith =>
      __$$_ShortPasswordCopyWithImpl<T, _$_ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword({required final T failedValue}) =
      _$_ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_ShortPasswordCopyWith<T, _$_ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordAndConfirmNotMatchCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$_PasswordAndConfirmNotMatchCopyWith(
          _$_PasswordAndConfirmNotMatch<T> value,
          $Res Function(_$_PasswordAndConfirmNotMatch<T>) then) =
      __$$_PasswordAndConfirmNotMatchCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_PasswordAndConfirmNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res,
        _$_PasswordAndConfirmNotMatch<T>>
    implements _$$_PasswordAndConfirmNotMatchCopyWith<T, $Res> {
  __$$_PasswordAndConfirmNotMatchCopyWithImpl(
      _$_PasswordAndConfirmNotMatch<T> _value,
      $Res Function(_$_PasswordAndConfirmNotMatch<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_PasswordAndConfirmNotMatch<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_PasswordAndConfirmNotMatch<T>
    implements _PasswordAndConfirmNotMatch<T> {
  const _$_PasswordAndConfirmNotMatch({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordAndConfirmNotMatch(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordAndConfirmNotMatch<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordAndConfirmNotMatchCopyWith<T, _$_PasswordAndConfirmNotMatch<T>>
      get copyWith => __$$_PasswordAndConfirmNotMatchCopyWithImpl<T,
          _$_PasswordAndConfirmNotMatch<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) passwordAndConfirmNotMatch,
  }) {
    return passwordAndConfirmNotMatch(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? passwordAndConfirmNotMatch,
  }) {
    return passwordAndConfirmNotMatch?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (passwordAndConfirmNotMatch != null) {
      return passwordAndConfirmNotMatch(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_ShortPassword<T> value) shortPassword,
    required TResult Function(_PasswordAndConfirmNotMatch<T> value)
        passwordAndConfirmNotMatch,
  }) {
    return passwordAndConfirmNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_ShortPassword<T> value)? shortPassword,
    TResult? Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
  }) {
    return passwordAndConfirmNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    TResult Function(_PasswordAndConfirmNotMatch<T> value)?
        passwordAndConfirmNotMatch,
    required TResult orElse(),
  }) {
    if (passwordAndConfirmNotMatch != null) {
      return passwordAndConfirmNotMatch(this);
    }
    return orElse();
  }
}

abstract class _PasswordAndConfirmNotMatch<T> implements ValueFailure<T> {
  const factory _PasswordAndConfirmNotMatch({required final T failedValue}) =
      _$_PasswordAndConfirmNotMatch<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordAndConfirmNotMatchCopyWith<T, _$_PasswordAndConfirmNotMatch<T>>
      get copyWith => throw _privateConstructorUsedError;
}
