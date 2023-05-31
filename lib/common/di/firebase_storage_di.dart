part of 'di.dart';

@module
abstract class FirebaseStorageDi {
  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;
}
