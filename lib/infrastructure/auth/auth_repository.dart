import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/user.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final auth.FirebaseAuth _firebaseAuth;

  AuthRepository(this._firebaseAuth);

  @override
  Stream<User> getAuthState() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return right(unit);
    } catch (e) {
      return left(const AuthFailure.userNotFound());
    }
  }

  @override
  Future<Either<AuthFailure, User>> getDetailUser() {
    throw UnimplementedError();
  }
}
