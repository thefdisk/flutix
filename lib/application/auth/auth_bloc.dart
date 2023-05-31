import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../../domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  StreamSubscription<User>? _userAuthSubscription;

  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<AuthEvent>(_onAuthEvent);
  }

  @override
  Future<void> close() {
    _userAuthSubscription?.cancel();
    return super.close();
  }

  Future<void> _onAuthEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) {
    return event.map(
      currentUserStatusWatchStarted: (e) async {
        _userAuthSubscription?.cancel();
        _userAuthSubscription = _authRepository.getAuthState().listen((user) {
          add(AuthEvent.fetchCurrentUserStatus(user));
        });
      },
      fetchCurrentUserStatus: (e) async {
        final isAuthenticated = e.user != User.empty();

        emit(
          state.copyWith(
            status: isAuthenticated
                ? const AuthStatus.authenticated()
                : const AuthStatus.unauthenticated(),
            user: e.user,
          ),
        );
      },
      fetchDetailUser: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
            failureOrUser: null,
          ),
        );

        final failureOrSuccess = await _authRepository.getDetailUser(
          uid: state.user.uid,
        );

        if (failureOrSuccess.isRight()) {
          emit(
            state.copyWith(
              user: failureOrSuccess.getOrElse(() => User.empty()),
            ),
          );
        }

        emit(
          state.copyWith(
            isFetching: false,
            failureOrUser: failureOrSuccess,
          ),
        );
      },
      logout: (e) async {
        emit(
          state.copyWith(
            isLogouting: true,
            failureOrSuccessLogout: null,
          ),
        );

        final failureOrSuccess = await _authRepository.signOut();

        emit(
          state.copyWith(
            isLogouting: false,
            failureOrSuccessLogout: failureOrSuccess,
          ),
        );
      },
    );
  }
}
