import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/api/api_failure.dart';

part 'movie_failure.freezed.dart';

@freezed
class MovieFailure with _$MovieFailure {
  const factory MovieFailure.serverError(ApiFailure failure) = _ServerError;
  const factory MovieFailure.unexpectedError() = _UnexpectedError;
}
