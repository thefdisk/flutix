import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/movie/i_movie_repository.dart';
import '../../../domain/movie/movie.dart';
import '../../../domain/movie/movie_failure.dart';

part 'movie_loader_event.dart';
part 'movie_loader_state.dart';
part 'movie_loader_bloc.freezed.dart';

@injectable
class MovieLoaderBloc extends Bloc<MovieLoaderEvent, MovieLoaderState> {
  final IMovieRepository _movieRepository;

  MovieLoaderBloc(this._movieRepository)
      : super(const MovieLoaderState.initial()) {
    on<MovieLoaderEvent>(_onMovieLoaderEvent);
  }

  Future<void> _onMovieLoaderEvent(
    MovieLoaderEvent event,
    Emitter<MovieLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        emit(const MovieLoaderState.loadInProgress());

        final failureOrSuccess = await _movieRepository.getMovies();

        emit(
          failureOrSuccess.fold(
            (f) => MovieLoaderState.loadFailure(f),
            (movies) => MovieLoaderState.loadSuccess(movies),
          ),
        );
      },
    );
  }
}
