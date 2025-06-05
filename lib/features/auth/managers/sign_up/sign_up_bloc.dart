import 'package:ayol_uchun/data/repositories/auth_repository.dart';
import 'package:ayol_uchun/features/auth/managers/sign_up/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_events.dart';

class SignUpBloc extends Bloc<SignUpEvents, SignUpState> {
  final AuthRepository _repo;

  SignUpBloc({required AuthRepository repo})
    : _repo = repo,
      super(SignUpState.initial()) {
    on<SFirstPage>(_onFirstPage);
    on<SSecondPage>(_onSecondPage);
    on<SThirdPage>(_onThirdPage);
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    try {
      final result = await _repo.signUp(
        firstName: state.firstName!,
        lastName: state.lastName!,
        email: state.email!,
        phoneNumber: state.phoneNumber!,
        password: state.password!,
      );

      if (result) {
        emit(state.copyWith(status: SignUpStatus.success));
      } else {
        emit(state.copyWith(status: SignUpStatus.error));
      }
    } catch (e) {
      emit(
        state.copyWith(status: SignUpStatus.error, errorMessage: e.toString()),
      );
    }
  }

  Future<void> _onFirstPage(SFirstPage event, Emitter<SignUpState> emit) async {
    emit(
      state.copyWith(
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
      ),
    );
  }

  Future<void> _onSecondPage(
    SSecondPage event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  Future<void> _onThirdPage(SThirdPage event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(password: event.password));
  }
}
