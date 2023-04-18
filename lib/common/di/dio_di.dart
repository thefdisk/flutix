part of 'di.dart';

@module
abstract class DioDi {
  @lazySingleton
  Dio get dio => Dio();
}
