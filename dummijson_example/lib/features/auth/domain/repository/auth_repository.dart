import 'dart:async';

import '../enums/auth_status.dart';
import '/features/auth/data/data.dart';

class AuthRepository {
  AuthRepository(AuthApiService apiService) : _apiService = apiService;

  final AuthApiService _apiService;
  late final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthStatus.unregistered;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    final token = _apiService
        .login(LoginRequestBody(username: username, password: password));
    await Future.delayed(const Duration(milliseconds: 400),
        () => _controller.add(AuthStatus.registered));
  }

  void logOut() {
    _controller.add(AuthStatus.unregistered);
  }

  void dispose() => _controller.close();
}
