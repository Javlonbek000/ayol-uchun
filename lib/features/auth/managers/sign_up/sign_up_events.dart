part of 'sign_up_bloc.dart';

sealed class SignUpEvents {}

final class SignUpSubmitted extends SignUpEvents{}

final class SFirstPage extends SignUpEvents {
  final String firstName;
  final String lastName;
  final String email;

  SFirstPage({
    required this.firstName,
    required this.lastName,
    required this.email,
  });
}

final class SSecondPage extends SignUpEvents {
  final String phoneNumber;

  SSecondPage({required this.phoneNumber});
}

final class SThirdPage extends SignUpEvents {
  final String password;

  SThirdPage({required this.password});
}
