import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    required String id,
    required String title,
    required double voteAverage,
    required String overview,
    required String posterPath,
    required String backdropPath,
    required List<String> genres,
    required String language,
  }) = _Movie;
}
