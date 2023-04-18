import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/movie/movie.dart';

part 'movie_dtos.freezed.dart';
part 'movie_dtos.g.dart';

@freezed
class MovieDto with _$MovieDto {
  const MovieDto._();
  const factory MovieDto({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'vote_average') num? voteAverage,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);

  Movie toDomain() => Movie(
        id: id ?? '',
        title: title ?? '',
        voteAverage: voteAverage?.toDouble() ?? 0.0,
        overview: overview ?? '',
        posterPath: posterPath ?? '',
        backdropPath: backdropPath ?? '',
        genres: [],
        language: '',
      );
}
