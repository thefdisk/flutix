part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.currentUserStatusWatchStarted() =
      _CurrentUserStatusWatchStarted;
  const factory AuthEvent.fetchCurrentUserStatus(User user) =
      _FetchCurrentUserStatus;
  const factory AuthEvent.fetchDetailUser() = _FetchDetailUser;
  const factory AuthEvent.logout() = _Logout;
}
