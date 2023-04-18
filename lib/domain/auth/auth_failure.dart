import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.invalidEmailPassword() = _InvalidEmailPassword;
}
