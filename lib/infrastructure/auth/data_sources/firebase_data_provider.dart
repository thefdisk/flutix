import 'package:dartz/dartz.dart';
import 'package:data_channel/data_channel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';

@injectable
class FirebaseAuthDataProvider {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthDataProvider(this._firebaseAuth);

  Future<DC<AuthFailure, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return DC.data(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return DC.error(const AuthFailure.emailAlreadyInUse());
      }
      return DC.error(AuthFailure.dynamicErrorMessage(e.code.toString()));
    } catch (e) {
      return DC.error(AuthFailure.dynamicErrorMessage(e.toString()));
    }
  }
}
