import 'package:ayol_uchun/data/repositories/auth_repository.dart';
import 'package:ayol_uchun/features/auth/managers/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_events.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {
  final AuthRepository _repo;

  LoginBloc({required AuthRepository repo})
    : _repo = repo,
      super(LoginState.initial()) {
    on<LoginRequest>(_onLoginRequest);
  }

  Future<void> _onLoginRequest(
    LoginRequest event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.idle));
    try {
      await _repo.login(event.email, event.password);
      emit(state.copyWith(status: LoginStatus.success));
    } catch (e) {
      emit(
        state.copyWith(errorMessage: e.toString(), status: LoginStatus.error),
      );
    }
  }
}
