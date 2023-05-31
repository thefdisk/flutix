import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String uid,
    required String email,
    required String name,
    required String photoUrl,
    required List<String> selectedGenres,
    required String selectedLanguage,
    required int balance,
  }) = _User;

  factory User.empty() => const User(
        uid: '',
        email: '',
        name: '',
        photoUrl: '',
        selectedGenres: [],
        selectedLanguage: '',
        balance: 0,
      );

  bool get isPreferenceFilled =>
      name.isNotEmpty &&
      selectedGenres.isNotEmpty &&
      selectedLanguage.isNotEmpty;
}
