part of 'movie_loader_bloc.dart';

@freezed
class MovieLoaderEvent with _$MovieLoaderEvent {
  const factory MovieLoaderEvent.fetched() = _Fetched;
}
