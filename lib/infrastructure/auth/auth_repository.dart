import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/user.dart';
import 'data_sources/firebase_data_provider.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final auth.FirebaseAuth _firebaseAuth;
  final FirebaseAuthDataProvider _firebaseAuthDataProvider;

  AuthRepository(
    this._firebaseAuth,
    this._firebaseAuthDataProvider,
  );

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
      final result = await _firebaseAuthDataProvider.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      return right(unit);
    } catch (e) {
      return left(const AuthFailure.unexpectedError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> getDetailUser() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> updateUser({
    required User user,
  }) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
