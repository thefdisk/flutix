part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required User user,
    required Either<AuthFailure, User>? failureOrUser,
    required Either<AuthFailure, Unit>? failureOrSuccessLogout,
    @Default(AuthStatus.initial()) AuthStatus status,
    @Default(false) bool isFetching,
    @Default(false) bool isLogouting,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        user: User.empty(),
        failureOrUser: null,
        failureOrSuccessLogout: null,
      );

  bool get isAuthenticated => status == const AuthStatus.authenticated();
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.authenticated() = _Authenticated;
  const factory AuthStatus.unauthenticated() = _Unauthenticated;
  const factory AuthStatus.initial() = _Initial;
}
