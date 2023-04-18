import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Stream<User> getAuthState();
  Future<Either<AuthFailure, User>> getDetailUser();
}
