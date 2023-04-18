part of 'di.dart';

@module
abstract class FirebaseAuthDi {
  @lazySingleton
  FirebaseAuth get auth => FirebaseAuth.instance;
}
