import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unexpectedError() = _UnexpectedError;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.invalidEmailPassword() = _InvalidEmailPassword;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.dynamicErrorMessage(String errorMessage) =
      _DynamicErrorMessage;
}
