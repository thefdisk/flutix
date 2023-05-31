import 'dart:io';

import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> updateUser({
    required User user,
  });
  Stream<User> getAuthState();
  Future<Either<AuthFailure, User>> getDetailUser();
  Future<Either<AuthFailure, String>> uploadPhotoProfile({
    required User user,
    required File photoImage,
  });
}
