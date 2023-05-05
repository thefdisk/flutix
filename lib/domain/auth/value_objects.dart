import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Email._(this.value);

  factory Email(String input) {
    return Email._(
      validateEmailAddress(input)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateStringSingleLine),
    );
  }

  bool get isNotEmpty => value.fold(
        (f) => f.failedValue.isNotEmpty,
        (_) => true,
      );
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String input) {
    return Password._(validatePassword(input).flatMap(validateStringNotEmpty));
  }

  bool get isNotEmpty => value.fold(
        (f) => f.failedValue.isNotEmpty,
        (_) => true,
      );
}

class ConfirmPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const ConfirmPassword._(this.value);

  factory ConfirmPassword(String input, String password) {
    return ConfirmPassword._(
      validateConfirmPassword(input, password).flatMap(validateStringNotEmpty),
    );
  }

  bool get isNotEmpty => value.fold(
        (f) => f.failedValue.isNotEmpty,
        (_) => true,
      );
}
