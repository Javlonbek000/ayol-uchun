import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus { idle, loading, success, error }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required String errorMessage,
    required LoginStatus status,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(errorMessage: '', status: LoginStatus.idle);
  }
}
