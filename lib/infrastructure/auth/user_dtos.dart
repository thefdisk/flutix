import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/user.dart';

part 'user_dtos.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String uid,
    required String email,
    required String name,
    required String profilePicture,
    required List<String> selectedGenres,
    required String selectedLanguage,
    required int balance,
  }) = _UserDto;

  factory UserDto.fromFirebaseCredential(
    auth.UserCredential firebaseUserCredenctial,
  ) {
    final firebaseUser = firebaseUserCredenctial.user!;

    return UserDto(
      uid: firebaseUser.uid,
      email: firebaseUser.email ?? '',
      name: '',
      profilePicture: '',
      selectedGenres: [],
      selectedLanguage: '',
      balance: 0,
    );
  }

  User toDomain() => User(
        id: uid,
        email: email,
        name: name,
        profilePicture: profilePicture,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage,
        balance: balance,
      );
}
