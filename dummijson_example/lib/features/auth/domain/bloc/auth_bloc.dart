import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/features/auth/domain/domain.dart';
import '../repository/auth_repository.dart';
import '../repository/user_repository.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.read() = ReadAuthEvent;

  const factory AuthEvent.logoutRequested() = LogoutRequestedAuthEvent;

  const factory AuthEvent.statusSubscription() = _StatusSubscriptionAuthEvent;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.unregistered() = UnregistredAuthState;

  const factory AuthState.registered(User user) = RegisteredAuthState;

  bool isLogin() => this is RegisteredAuthState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        super(const UnregistredAuthState()) {
    on<LogoutRequestedAuthEvent>(_onLogoutRequested);
    on<_StatusSubscriptionAuthEvent>(_onAuthStatusSubscription);
  }
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  @override
  Future<void> close() async {
    super.close();
  }

  Future<void> _onAuthStatusSubscription(
      _StatusSubscriptionAuthEvent event, Emitter<AuthState> emit) async {
    await emit.onEach<AuthStatus>(
      _authRepository.status,
      onData: (status) async {
        switch (status) {
          case AuthStatus.registered:
            final user = await _tryGetUser();
            emit(user != null
                ? AuthState.registered(user)
                : const AuthState.unregistered());
            break;
          case AuthStatus.unregistered:
          case AuthStatus.unknown:
          default:
            emit(const AuthState.unregistered());
        }
      },
    );
  }

  Future<void> _onLogoutRequested(
      LogoutRequestedAuthEvent event, Emitter<AuthState> emit) async {
    _authRepository.logOut();
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }
}
