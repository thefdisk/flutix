import 'package:dartz/dartz.dart';
import 'package:string_validator/string_validator.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }

  return left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiLine(failedValue: input));
  }

  return right(input);
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (isEmail(input)) {
    return right(input);
  }

  return left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  }

  return left(ValueFailure.shortPassword(failedValue: input));
}

Either<ValueFailure<String>, String> validateConfirmPassword(
  String input,
  String password,
) {
  if (input.length >= 6 && input == password) {
    return right(input);
  }

  if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }

  return left(ValueFailure.passwordAndConfirmNotMatch(failedValue: input));
}
