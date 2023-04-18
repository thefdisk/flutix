part of 'movie_loader_bloc.dart';

@freezed
class MovieLoaderState with _$MovieLoaderState {
  const factory MovieLoaderState.initial() = _Initial;
  const factory MovieLoaderState.loadInProgress() = _LoadInProgress;
  const factory MovieLoaderState.loadFailure(MovieFailure failure) =
      _LoadFailure;
  const factory MovieLoaderState.loadSuccess(List<Movie> movies) = _LoadSuccess;
}
