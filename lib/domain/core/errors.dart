import 'failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure _valueFailure;

  UnexpectedValueError(this._valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $_valueFailure');
  }
}
