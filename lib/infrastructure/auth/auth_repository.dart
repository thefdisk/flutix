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
    return _firebaseAuthDataProvider.userAuth.map((userDto) {
      return userDto == UserDto.empty() ? User.empty() : userDto.toDomain();
    });
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuthDataProvider.signInWithEmailAndPassword(
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
  Future<Either<AuthFailure, User>> getDetailUser({required String uid}) async {
    try {
      final result = await _firebaseAuthDataProvider.fetchDetailUser(uid: uid);

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

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final result = await _firebaseAuthDataProvider.signOut();

      if (result.hasError) {
        return left(result.error!);
      }

      return right(unit);
    } catch (e) {
      return left(const AuthFailure.unexpectedError());
    }
  }
}
