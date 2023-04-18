import 'dart:developer';

import 'package:data_channel/data_channel.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api/api_client.dart';
import '../../../common/api/api_failure.dart';
import '../../../common/urls/api_path.dart';
import '../../../domain/movie/movie_failure.dart';
import '../../../env.dart';
import '../movie_dtos.dart';

@injectable
class MovieRemoteDataProvider {
  final ApiClient _apiClient;
  final Env _env;

  MovieRemoteDataProvider(this._apiClient, this._env);

  Future<DC<MovieFailure, List<MovieDto>>> fetchMovies() async {
    try {
      final response = await _apiClient.get(
        ApiPath.getMovies,
        params: {
          'api_key': _env.apiKeyMovieDB,
          'language': 'en-US',
          'sort_by': 'popularity.desc',
          'include_adult': false,
          'include_video': false,
          'page': '1',
          'with_watch_monetization_types': 'free',
        },
      );

      final dtos = (response.data['results'] as List)
          .map((json) => MovieDto.fromJson(json))
          .toList();

      return DC.data(dtos);
    } on ApiFailure catch (e, s) {
      log(
        'getMoviesError',
        name: 'MovieRemoteDataProvider',
        error: e,
        stackTrace: s,
      );

      return DC.error(MovieFailure.serverError(e));
    }
  }
}
