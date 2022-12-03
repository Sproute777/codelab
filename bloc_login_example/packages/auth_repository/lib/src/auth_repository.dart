import 'dart:async';

enum AuthStatus { unknown, registered, unregistered }

class AuthRepository {
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
    await Future.delayed(const Duration(milliseconds: 400),
        () => _controller.add(AuthStatus.registered));
  }

  void logOut() {
    _controller.add(AuthStatus.unregistered);
  }

  void dispose() => _controller.close();
}
