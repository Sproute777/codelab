import 'dart:async';

import '../enums/auth_status.dart';
import '/features/auth/data/data.dart';

abstract class IAuthRepository {
  /// connection [Stream<AuthStatus>]
  Stream<AuthStatus> get status;

  /// sent username and password to data
  Future<void> logIn({required String username, required String password});

  void logOut();
  void dispose();
}

class AuthRepository implements IAuthRepository {
  AuthRepository(AuthApiService apiService, AuthLocalStorage authLocalStorage) : _apiService = apiService, _authLocalStorage = authLocalStorage;

  final AuthApiService _apiService;
  final AuthLocalStorage _authLocalStorage;
  late final _controller = StreamController<AuthStatus>();

  @override
  Stream<AuthStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthStatus.unregistered;
    yield* _controller.stream;
  }

  @override
  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    try {
      final tokenDto = await _apiService
          .login(LoginRequestBody(username: username, password: password));
      await _authLocalStorage.setToken(tokenDto.token);
      _controller.add(AuthStatus.registered);
    } on Exception catch (err, _) {
      _controller.add(AuthStatus.unregistered);
      rethrow;
    }
  }

  @override
  void logOut() {
    _authLocalStorage.clearToken();
    _controller.add(AuthStatus.unregistered);
  }

  @override
  void dispose() => _controller.close();
}
