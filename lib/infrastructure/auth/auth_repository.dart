import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/user.dart';
import 'data_sources/firebase_data_provider.dart';
import 'user_dtos.dart';

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuthDataProvider _firebaseAuthDataProvider;

  AuthRepository(this._firebaseAuthDataProvider);

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
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
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

      final user = result.data!.toDomain();

      return right(user);
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
    try {
      final result = await _firebaseAuthDataProvider.updateUser(
        user: UserDto.fromDomain(user),
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
  Future<Either<AuthFailure, String>> uploadPhotoProfile({
    required User user,
    required File photoImage,
  }) async {
    try {
      final result = await _firebaseAuthDataProvider.uploadPhotoProfile(
        uid: user.uid,
        photoImage: photoImage,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final photoProfileUrl = result.data!;

      return right(photoProfileUrl);
    } catch (e) {
      return left(const AuthFailure.unexpectedError());
    }
  }
}
