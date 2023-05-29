// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDto {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  List<String> get selectedGenres => throw _privateConstructorUsedError;
  String get selectedLanguage => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String profilePicture,
      List<String> selectedGenres,
      String selectedLanguage,
      int balance});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? selectedGenres = null,
    Object? selectedLanguage = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGenres: null == selectedGenres
          ? _value.selectedGenres
          : selectedGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$_UserDtoCopyWith(
          _$_UserDto value, $Res Function(_$_UserDto) then) =
      __$$_UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String profilePicture,
      List<String> selectedGenres,
      String selectedLanguage,
      int balance});
}

/// @nodoc
class __$$_UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$_UserDto>
    implements _$$_UserDtoCopyWith<$Res> {
  __$$_UserDtoCopyWithImpl(_$_UserDto _value, $Res Function(_$_UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? selectedGenres = null,
    Object? selectedLanguage = null,
    Object? balance = null,
  }) {
    return _then(_$_UserDto(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGenres: null == selectedGenres
          ? _value._selectedGenres
          : selectedGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {required this.uid,
      required this.email,
      required this.name,
      required this.profilePicture,
      required final List<String> selectedGenres,
      required this.selectedLanguage,
      required this.balance})
      : _selectedGenres = selectedGenres;

  @override
  final String uid;
  @override
  final String email;
  @override
  final String name;
  @override
  final String profilePicture;
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
  final int balance;

  @override
  String toString() {
    return 'UserDto(uid: $uid, email: $email, name: $name, profilePicture: $profilePicture, selectedGenres: $selectedGenres, selectedLanguage: $selectedLanguage, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDto &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            const DeepCollectionEquality()
                .equals(other._selectedGenres, _selectedGenres) &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      email,
      name,
      profilePicture,
      const DeepCollectionEquality().hash(_selectedGenres),
      selectedLanguage,
      balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      __$$_UserDtoCopyWithImpl<_$_UserDto>(this, _$identity);
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final String uid,
      required final String email,
      required final String name,
      required final String profilePicture,
      required final List<String> selectedGenres,
      required final String selectedLanguage,
      required final int balance}) = _$_UserDto;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get name;
  @override
  String get profilePicture;
  @override
  List<String> get selectedGenres;
  @override
  String get selectedLanguage;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$_UserDtoCopyWith<_$_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
