import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_channel/data_channel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../user_dtos.dart';

@injectable
class FirebaseAuthDataProvider {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _db;
  final FirebaseStorage _storage;

  FirebaseAuthDataProvider(this._firebaseAuth, this._db, this._storage);

  Stream<UserDto> get userAuth {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final userDto = firebaseUser == null
          ? UserDto.empty()
          : UserDto.fromFirebaseUser(firebaseUser);

      return userDto;
    });
  }

  Future<DC<AuthFailure, UserDto>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final firebaseUserCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return DC.data(UserDto.fromFirebaseCredential(firebaseUserCredential));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return DC.error(const AuthFailure.userNotFound());
      }
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    } catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.toString()));
    }
  }

  Future<DC<AuthFailure, UserDto>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final firebaseUserCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return DC.data(UserDto.fromFirebaseCredential(firebaseUserCredential));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return DC.error(const AuthFailure.emailAlreadyInUse());
      }
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    } catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.toString()));
    }
  }

  Future<DC<AuthFailure, Unit>> signOut() async {
    try {
      await _firebaseAuth.signOut();

      return DC.data(unit);
    } on FirebaseException catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    }
  }

  Future<DC<AuthFailure, UserDto>> fetchDetailUser({
    required String uid,
  }) async {
    try {
      final docSnapshot = await _db.collection('users').doc(uid).get();

      if (!docSnapshot.exists) {
        return DC.error(const AuthFailure.userNotFound());
      }

      final userData = docSnapshot.data() as Map<String, dynamic>;

      final userDto = UserDto.fromJson(userData);

      return DC.data(userDto);
    } on FirebaseException catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    }
  }

  Future<DC<AuthFailure, Unit>> updateUser({
    required UserDto user,
  }) async {
    try {
      await _db.collection('users').doc(user.uid).set(user.toJson());

      return DC.data(unit);
    } on FirebaseException catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    }
  }

  Future<DC<AuthFailure, String>> uploadPhotoProfile({
    required String uid,
    required File photoImage,
  }) async {
    try {
      final photoProfileRef = _storage.ref('photo').child(uid);
      final taskUpload = await photoProfileRef.putFile(photoImage);
      final photoProfileUrl = await taskUpload.ref.getDownloadURL();

      return DC.data(photoProfileUrl);
    } on FirebaseException catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.code));
    }
  }
}
