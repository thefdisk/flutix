import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String uid,
    required String email,
    required String name,
    required String photoUrl,
    required List<String> selectedGenres,
    required String selectedLanguage,
    required int balance,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirebaseCredential(
    auth.UserCredential firebaseUserCredenctial,
  ) {
    final firebaseUser = firebaseUserCredenctial.user!;

    return UserDto(
      uid: firebaseUser.uid,
      email: firebaseUser.email ?? '',
      name: '',
      photoUrl: '',
      selectedGenres: [],
      selectedLanguage: '',
      balance: 0,
    );
  }

  factory UserDto.fromDomain(User user) => UserDto(
        uid: user.uid,
        email: user.email,
        name: user.name,
        photoUrl: user.photoUrl,
        selectedGenres: user.selectedGenres,
        selectedLanguage: user.selectedLanguage,
        balance: user.balance,
      );

  User toDomain() => User(
        uid: uid,
        email: email,
        name: name,
        photoUrl: photoUrl,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage,
        balance: balance,
      );
}
