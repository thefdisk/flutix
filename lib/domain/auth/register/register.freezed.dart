// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Register {
  String get uid => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  File? get photoImage => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  List<String> get selectedGenres => throw _privateConstructorUsedError;
  String get selectedLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res, Register>;
  @useResult
  $Res call(
      {String uid,
      StringSingleLine name,
      Email email,
      Password password,
      ConfirmPassword confirmPassword,
      File? photoImage,
      String photoUrl,
      List<String> selectedGenres,
      String selectedLanguage});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res, $Val extends Register>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? photoImage = freezed,
    Object? photoUrl = null,
    Object? selectedGenres = null,
    Object? selectedLanguage = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      photoImage: freezed == photoImage
          ? _value.photoImage
          : photoImage // ignore: cast_nullable_to_non_nullable
              as File?,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGenres: null == selectedGenres
          ? _value.selectedGenres
          : selectedGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> implements $RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      StringSingleLine name,
      Email email,
      Password password,
      ConfirmPassword confirmPassword,
      File? photoImage,
      String photoUrl,
      List<String> selectedGenres,
      String selectedLanguage});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? photoImage = freezed,
    Object? photoUrl = null,
    Object? selectedGenres = null,
    Object? selectedLanguage = null,
  }) {
    return _then(_$_Register(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      photoImage: freezed == photoImage
          ? _value.photoImage
          : photoImage // ignore: cast_nullable_to_non_nullable
              as File?,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGenres: null == selectedGenres
          ? _value._selectedGenres
          : selectedGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register extends _Register {
  const _$_Register(
      {required this.uid,
      required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword,
      this.photoImage,
      required this.photoUrl,
      required final List<String> selectedGenres,
      required this.selectedLanguage})
      : _selectedGenres = selectedGenres,
        super._();

  @override
  final String uid;
  @override
  final StringSingleLine name;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final File? photoImage;
  @override
  final String photoUrl;
  final List<String> _selectedGenres;
  @override
  List<String> get selectedGenres {
    if (_selectedGenres is EqualUnmodifiableListView) return _selectedGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedGenres);
  }

  @override
  final String selectedLanguage;

  @override
  String toString() {
    return 'Register(uid: $uid, name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, photoImage: $photoImage, photoUrl: $photoUrl, selectedGenres: $selectedGenres, selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.photoImage, photoImage) ||
                other.photoImage == photoImage) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._selectedGenres, _selectedGenres) &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      email,
      password,
      confirmPassword,
      photoImage,
      photoUrl,
      const DeepCollectionEquality().hash(_selectedGenres),
      selectedLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);
}

abstract class _Register extends Register {
  const factory _Register(
      {required final String uid,
      required final StringSingleLine name,
      required final Email email,
      required final Password password,
      required final ConfirmPassword confirmPassword,
      final File? photoImage,
      required final String photoUrl,
      required final List<String> selectedGenres,
      required final String selectedLanguage}) = _$_Register;
  const _Register._() : super._();

  @override
  String get uid;
  @override
  StringSingleLine get name;
  @override
  Email get email;
  @override
  Password get password;
  @override
  ConfirmPassword get confirmPassword;
  @override
  File? get photoImage;
  @override
  String get photoUrl;
  @override
  List<String> get selectedGenres;
  @override
  String get selectedLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}
