part of 'services.dart';
/*
class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.doc(user.id).set(
      {
        'email': user.email,
        'name': user.name,
        'balance': user.balance,
        'selectedGenres': user.selectedGenres,
        'selectedLanguage': user.selectedLanguage,
        'profilePicture': user.profilePicture ?? '',
      },
    );
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return User(
      id,
      snapshot.data()['email'],
      balance: snapshot.data()['balance'],
      name: snapshot.data()['name'],
      selectedGenres: (snapshot.data()['selectedGenres'] as List)
          .map((e) => e.toString())
          .toList(),
      selectedLanguage: snapshot.data()['selectedLanguage'],
      profilePicture: snapshot.data()['profilePicture'],
    );
  }
}
*/