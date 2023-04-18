import 'package:dartz/dartz.dart';

import 'movie.dart';
import 'movie_failure.dart';

abstract class IMovieRepository {
  Future<Either<MovieFailure, List<Movie>>> getMovies();
  Future<Either<MovieFailure, Movie>> getDetailMovie({required String movieId});
}
