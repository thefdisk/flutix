import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects.dart';
import '../user.dart';
import '../value_objects.dart';

part 'register.freezed.dart';

@freezed
class Register with _$Register {
  const Register._();

  const factory Register({
    required String uid,
    required StringSingleLine name,
    required Email email,
    required Password password,
    required ConfirmPassword confirmPassword,
    File? photoImage,
    required String photoUrl,
    required List<String> selectedGenres,
    required String selectedLanguage,
  }) = _Register;

  factory Register.empty() => Register(
        uid: '',
        name: StringSingleLine(''),
        email: Email(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', ''),
        photoUrl: '',
        selectedGenres: [],
        selectedLanguage: 'English',
      );

  factory Register.fromUser(User user) => Register(
        uid: user.uid,
        name: StringSingleLine(''),
        email: Email(user.email),
        password: Password(''),
        confirmPassword: ConfirmPassword('', ''),
        photoUrl: '',
        selectedGenres: [],
        selectedLanguage: '',
      );

  User toUserDomain() => User(
        uid: uid,
        email: email.getOrCrash(),
        name: name.getOrCrash(),
        photoUrl: photoUrl,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage,
        balance: 0,
      );
}
