import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/movie/i_movie_repository.dart';
import '../../domain/movie/movie.dart';
import '../../domain/movie/movie_failure.dart';
import 'data_sources/remote_data_provider.dart';

@Injectable(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieRemoteDataProvider _remoteDataProvider;

  MovieRepository(this._remoteDataProvider);

  @override
  Future<Either<MovieFailure, Movie>> getDetailMovie({
    required String movieId,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<MovieFailure, List<Movie>>> getMovies() async {
    try {
      final result = await _remoteDataProvider.fetchMovies();

      if (result.hasError) {
        return left(result.error!);
      }

      final movies = result.data!.map((e) => e.toDomain()).toList();

      return right(movies);
    } catch (e, s) {
      log(
        'getMoviesError',
        name: 'MovieRepository',
        error: e,
        stackTrace: s,
      );

      return left(const MovieFailure.unexpectedError());
    }
  }
}
