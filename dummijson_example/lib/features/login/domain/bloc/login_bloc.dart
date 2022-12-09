import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/features/auth/domain/repository/auth_repository.dart';
import '../domain.dart';

part 'login_bloc.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String username) =
      _UsernameChangedLoginEvent;
  const factory LoginEvent.passwordChanged(String password) =
      _PasswordChangedLoginEvent;
  const factory LoginEvent.submitted() = _SubmittedLoginEvent;
}

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
  }) = InitialLoginState;
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const LoginState()) {
    // print('${state.status.isInvalid}');
    on<_UsernameChangedLoginEvent>(_onUsernameChanged);
    on<_PasswordChangedLoginEvent>(_onPasswordChanged);
    on<_SubmittedLoginEvent>(_onSubmitted);
  }

  final AuthRepository _authRepository;

  Future<void> _onUsernameChanged(
      _UsernameChangedLoginEvent event, Emitter<LoginState> emit) async {
    final username = Username.dirty(event.username);
    emit(state.copyWith(
        username: username,
        status: Formz.validate([state.password, username])));
  }

  Future<void> _onPasswordChanged(
      _PasswordChangedLoginEvent event, Emitter<LoginState> emit) async {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
        password: password,
        status: Formz.validate([password, state.username])));
  }

  Future<void> _onSubmitted(
      _SubmittedLoginEvent event, Emitter<LoginState> emit) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await _authRepository.logIn(
            username: state.username.value, password: state.password.value);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}
