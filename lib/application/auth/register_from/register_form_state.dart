part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required User user,
    File? photoProfile,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
    @Default(false) bool isSubmitting,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        user: User.empty(),
        failureOrSuccessOption: none(),
      );
}
