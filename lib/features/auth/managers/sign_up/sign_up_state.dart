import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { idle, loading, success, error }

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? phoneNumber,
    required String? password,
    required SignUpStatus status,
    required String errorMessage,
  }) = _SignUpState;

  factory SignUpState.initial() {
    return SignUpState(
      errorMessage: '',
      status: SignUpStatus.idle,
      firstName: null,
      lastName: null,
      email: null,
      phoneNumber: null,
      password: null,
    );
  }
}
