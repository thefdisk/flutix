import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

abstract class Env {
  String get baseUrl;
  String get apiKeyMovieDB;
}

@LazySingleton(as: Env)
@dev
class DevEnv implements Env {
  @override
  String get apiKeyMovieDB => dotenv.get('API_KEY_TMDB');

  @override
  String get baseUrl => throw UnimplementedError();
}

@LazySingleton(as: Env)
@prod
class ProdEnv implements Env {
  @override
  String get apiKeyMovieDB => dotenv.get('API_KEY_TMDB');

  @override
  String get baseUrl => throw UnimplementedError();
}
