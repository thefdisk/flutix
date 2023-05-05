import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String email,
    required String name,
    required String profilePicture,
    required List<String> selectedGenres,
    required String selectedLanguage,
    required int balance,
  }) = _User;

  factory User.empty() => const User(
        id: '',
        email: '',
        name: '',
        profilePicture: '',
        selectedGenres: [],
        selectedLanguage: '',
        balance: 0,
      );
}
