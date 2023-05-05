import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects.dart';
import '../value_objects.dart';

part 'register.freezed.dart';

@freezed
class Register with _$Register {
  const Register._();
  const factory Register({
    required StringSingleLine name,
    required Email email,
    required Password password,
    required ConfirmPassword confirmPassword,
    File? profilePicture,
    required List<String> selectedGenres,
    required String selectedLanguage,
  }) = _Register;

  factory Register.empty() => Register(
        name: StringSingleLine(''),
        email: Email(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', ''),
        selectedGenres: [],
        selectedLanguage: 'English',
      );
}
