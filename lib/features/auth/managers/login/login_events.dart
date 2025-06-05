part of 'login_bloc.dart';

sealed class LoginEvents {}

final class LoginRequest extends LoginEvents {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});
}
