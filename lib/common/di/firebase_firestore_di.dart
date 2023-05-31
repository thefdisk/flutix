part of 'di.dart';

@module
abstract class FirebaseFirestoreDi {
  @lazySingleton
  FirebaseFirestore get db => FirebaseFirestore.instance;
}
