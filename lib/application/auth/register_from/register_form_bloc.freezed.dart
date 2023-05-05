// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res, RegisterFormEvent>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res, $Val extends RegisterFormEvent>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PhotoProfileAddedCopyWith<$Res> {
  factory _$$_PhotoProfileAddedCopyWith(_$_PhotoProfileAdded value,
          $Res Function(_$_PhotoProfileAdded) then) =
      __$$_PhotoProfileAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({File photoProfile});
}

/// @nodoc
class __$$_PhotoProfileAddedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_PhotoProfileAdded>
    implements _$$_PhotoProfileAddedCopyWith<$Res> {
  __$$_PhotoProfileAddedCopyWithImpl(
      _$_PhotoProfileAdded _value, $Res Function(_$_PhotoProfileAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoProfile = null,
  }) {
    return _then(_$_PhotoProfileAdded(
      null == photoProfile
          ? _value.photoProfile
          : photoProfile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PhotoProfileAdded implements _PhotoProfileAdded {
  const _$_PhotoProfileAdded(this.photoProfile);

  @override
  final File photoProfile;

  @override
  String toString() {
    return 'RegisterFormEvent.photoProfileAdded(photoProfile: $photoProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoProfileAdded &&
            (identical(other.photoProfile, photoProfile) ||
                other.photoProfile == photoProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoProfileAddedCopyWith<_$_PhotoProfileAdded> get copyWith =>
      __$$_PhotoProfileAddedCopyWithImpl<_$_PhotoProfileAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return photoProfileAdded(photoProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return photoProfileAdded?.call(photoProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (photoProfileAdded != null) {
      return photoProfileAdded(photoProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return photoProfileAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return photoProfileAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (photoProfileAdded != null) {
      return photoProfileAdded(this);
    }
    return orElse();
  }
}

abstract class _PhotoProfileAdded implements RegisterFormEvent {
  const factory _PhotoProfileAdded(final File photoProfile) =
      _$_PhotoProfileAdded;

  File get photoProfile;
  @JsonKey(ignore: true)
  _$$_PhotoProfileAddedCopyWith<_$_PhotoProfileAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhotoProfileDeletedCopyWith<$Res> {
  factory _$$_PhotoProfileDeletedCopyWith(_$_PhotoProfileDeleted value,
          $Res Function(_$_PhotoProfileDeleted) then) =
      __$$_PhotoProfileDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhotoProfileDeletedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_PhotoProfileDeleted>
    implements _$$_PhotoProfileDeletedCopyWith<$Res> {
  __$$_PhotoProfileDeletedCopyWithImpl(_$_PhotoProfileDeleted _value,
      $Res Function(_$_PhotoProfileDeleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhotoProfileDeleted implements _PhotoProfileDeleted {
  const _$_PhotoProfileDeleted();

  @override
  String toString() {
    return 'RegisterFormEvent.photoProfileDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhotoProfileDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return photoProfileDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return photoProfileDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (photoProfileDeleted != null) {
      return photoProfileDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return photoProfileDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return photoProfileDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (photoProfileDeleted != null) {
      return photoProfileDeleted(this);
    }
    return orElse();
  }
}

abstract class _PhotoProfileDeleted implements RegisterFormEvent {
  const factory _PhotoProfileDeleted() = _$_PhotoProfileDeleted;
}

/// @nodoc
abstract class _$$_FullNameChangedCopyWith<$Res> {
  factory _$$_FullNameChangedCopyWith(
          _$_FullNameChanged value, $Res Function(_$_FullNameChanged) then) =
      __$$_FullNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullname});
}

/// @nodoc
class __$$_FullNameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_FullNameChanged>
    implements _$$_FullNameChangedCopyWith<$Res> {
  __$$_FullNameChangedCopyWithImpl(
      _$_FullNameChanged _value, $Res Function(_$_FullNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
  }) {
    return _then(_$_FullNameChanged(
      null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullNameChanged implements _FullNameChanged {
  const _$_FullNameChanged(this.fullname);

  @override
  final String fullname;

  @override
  String toString() {
    return 'RegisterFormEvent.fullNameChanged(fullname: $fullname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullNameChanged &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameChangedCopyWith<_$_FullNameChanged> get copyWith =>
      __$$_FullNameChangedCopyWithImpl<_$_FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return fullNameChanged(fullname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return fullNameChanged?.call(fullname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements RegisterFormEvent {
  const factory _FullNameChanged(final String fullname) = _$_FullNameChanged;

  String get fullname;
  @JsonKey(ignore: true)
  _$$_FullNameChangedCopyWith<_$_FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterFormEvent {
  const factory _EmailChanged(final String email) = _$_EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterFormEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$_ConfirmPasswordChangedCopyWith(_$_ConfirmPasswordChanged value,
          $Res Function(_$_ConfirmPasswordChanged) then) =
      __$$_ConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$_ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_ConfirmPasswordChanged>
    implements _$$_ConfirmPasswordChangedCopyWith<$Res> {
  __$$_ConfirmPasswordChangedCopyWithImpl(_$_ConfirmPasswordChanged _value,
      $Res Function(_$_ConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$_ConfirmPasswordChanged(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterFormEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPasswordChanged &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      __$$_ConfirmPasswordChangedCopyWithImpl<_$_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegisterFormEvent {
  const factory _ConfirmPasswordChanged(final String confirmPassword) =
      _$_ConfirmPasswordChanged;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateFieldCopyWith<$Res> {
  factory _$$_ValidateFieldCopyWith(
          _$_ValidateField value, $Res Function(_$_ValidateField) then) =
      __$$_ValidateFieldCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidateFieldCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res, _$_ValidateField>
    implements _$$_ValidateFieldCopyWith<$Res> {
  __$$_ValidateFieldCopyWithImpl(
      _$_ValidateField _value, $Res Function(_$_ValidateField) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidateField implements _ValidateField {
  const _$_ValidateField();

  @override
  String toString() {
    return 'RegisterFormEvent.validateField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ValidateField);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File photoProfile) photoProfileAdded,
    required TResult Function() photoProfileDeleted,
    required TResult Function(String fullname) fullNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() validateField,
  }) {
    return validateField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File photoProfile)? photoProfileAdded,
    TResult? Function()? photoProfileDeleted,
    TResult? Function(String fullname)? fullNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? validateField,
  }) {
    return validateField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File photoProfile)? photoProfileAdded,
    TResult Function()? photoProfileDeleted,
    TResult Function(String fullname)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? validateField,
    required TResult orElse(),
  }) {
    if (validateField != null) {
      return validateField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoProfileAdded value) photoProfileAdded,
    required TResult Function(_PhotoProfileDeleted value) photoProfileDeleted,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ValidateField value) validateField,
  }) {
    return validateField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult? Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ValidateField value)? validateField,
  }) {
    return validateField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoProfileAdded value)? photoProfileAdded,
    TResult Function(_PhotoProfileDeleted value)? photoProfileDeleted,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ValidateField value)? validateField,
    required TResult orElse(),
  }) {
    if (validateField != null) {
      return validateField(this);
    }
    return orElse();
  }
}

abstract class _ValidateField implements RegisterFormEvent {
  const factory _ValidateField() = _$_ValidateField;
}

/// @nodoc
mixin _$RegisterFormState {
  Register get register => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFormfieldValid => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res, RegisterFormState>;
  @useResult
  $Res call(
      {Register register,
      User user,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool showErrorMessages,
      bool isFormfieldValid,
      bool isSubmitting});

  $RegisterCopyWith<$Res> get register;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res, $Val extends RegisterFormState>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
    Object? user = null,
    Object? failureOrSuccessOption = null,
    Object? showErrorMessages = null,
    Object? isFormfieldValid = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      register: null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormfieldValid: null == isFormfieldValid
          ? _value.isFormfieldValid
          : isFormfieldValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterCopyWith<$Res> get register {
    return $RegisterCopyWith<$Res>(_value.register, (value) {
      return _then(_value.copyWith(register: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$$_RegisterFormStateCopyWith(_$_RegisterFormState value,
          $Res Function(_$_RegisterFormState) then) =
      __$$_RegisterFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Register register,
      User user,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      bool showErrorMessages,
      bool isFormfieldValid,
      bool isSubmitting});

  @override
  $RegisterCopyWith<$Res> get register;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res, _$_RegisterFormState>
    implements _$$_RegisterFormStateCopyWith<$Res> {
  __$$_RegisterFormStateCopyWithImpl(
      _$_RegisterFormState _value, $Res Function(_$_RegisterFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
    Object? user = null,
    Object? failureOrSuccessOption = null,
    Object? showErrorMessages = null,
    Object? isFormfieldValid = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_RegisterFormState(
      register: null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormfieldValid: null == isFormfieldValid
          ? _value.isFormfieldValid
          : isFormfieldValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterFormState extends _RegisterFormState {
  const _$_RegisterFormState(
      {required this.register,
      required this.user,
      required this.failureOrSuccessOption,
      this.showErrorMessages = false,
      this.isFormfieldValid = false,
      this.isSubmitting = false})
      : super._();

  @override
  final Register register;
  @override
  final User user;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;
  @override
  @JsonKey()
  final bool showErrorMessages;
  @override
  @JsonKey()
  final bool isFormfieldValid;
  @override
  @JsonKey()
  final bool isSubmitting;

  @override
  String toString() {
    return 'RegisterFormState(register: $register, user: $user, failureOrSuccessOption: $failureOrSuccessOption, showErrorMessages: $showErrorMessages, isFormfieldValid: $isFormfieldValid, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterFormState &&
            (identical(other.register, register) ||
                other.register == register) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isFormfieldValid, isFormfieldValid) ||
                other.isFormfieldValid == isFormfieldValid) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      register,
      user,
      failureOrSuccessOption,
      showErrorMessages,
      isFormfieldValid,
      isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      __$$_RegisterFormStateCopyWithImpl<_$_RegisterFormState>(
          this, _$identity);
}

abstract class _RegisterFormState extends RegisterFormState {
  const factory _RegisterFormState(
      {required final Register register,
      required final User user,
      required final Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
      final bool showErrorMessages,
      final bool isFormfieldValid,
      final bool isSubmitting}) = _$_RegisterFormState;
  const _RegisterFormState._() : super._();

  @override
  Register get register;
  @override
  User get user;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  bool get showErrorMessages;
  @override
  bool get isFormfieldValid;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterFormStateCopyWith<_$_RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
