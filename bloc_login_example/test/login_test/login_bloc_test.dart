import 'package:auth_repository/auth_repository.dart';
import 'package:bloc_login_example/features/login/bloc/login_bloc.dart';
import 'package:bloc_login_example/features/login/models/password.dart';
import 'package:bloc_login_example/features/login/models/username.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late AuthRepository authRepository;

  setUp(() {
    authRepository = MockAuthRepository();
  });

  group('LoginBloc', () {
    test('initial state is LoginState', () {
      final loginBloc = LoginBloc(authRepository: authRepository);
      expect(loginBloc.state, const LoginState());
    });
  });

  group('LoginSubmitted', () {
    blocTest('''
emits [submissionInProgress, submissionSucces]
when login successed
''',
        setUp: () => when(
              () => authRepository.logIn(
                  username: 'username', password: 'password'),
            ).thenAnswer((_) => Future<String>.value('user')),
        build: () => LoginBloc(authRepository: authRepository),
        act: (bloc) {
          bloc
            ..add(const LoginEvent.usernameChanged('username'))
            ..add(const LoginEvent.passwordChanged('password'))
            ..add(const LoginEvent.submitted());
        },
        expect: () => const <LoginState>[
              LoginState(
                username: Username.dirty('username'),
                status: FormzStatus.invalid,
              ),
              LoginState(
                username: Username.dirty('username'),
                password: Password.dirty('password'),
                status: FormzStatus.valid,
              ),
              LoginState(
                  username: Username.dirty('username'),
                  password: Password.dirty('password'),
                  status: FormzStatus.submissionInProgress),
              LoginState(
                  username: Username.dirty('username'),
                  password: Password.dirty('password'),
                  status: FormzStatus.submissionSuccess),
            ]);

    blocTest('''
emits [submissionInProgress, submissionSucces]
when login failure 
''',
        setUp: () { when(
              () => authRepository.logIn(
                  username: 'username', password: 'password'),
            ).thenThrow(Exception('oops'));},
        build: () => LoginBloc(authRepository: authRepository),
        act: (bloc) {
          bloc
            ..add(const LoginEvent.usernameChanged('username'))
            ..add(const LoginEvent.passwordChanged('password'))
            ..add(const LoginEvent.submitted());
        },
        expect: () => const <LoginState>[
              LoginState(
                  username: Username.dirty('username'),
                  status: FormzStatus.invalid),
              LoginState(
                username: Username.dirty('username'),
                password: Password.dirty('password'),
                status: FormzStatus.valid,
              ),
              LoginState(
                  username: Username.dirty('username'),
                  password: Password.dirty('password'),
                  status: FormzStatus.submissionInProgress),
              LoginState(
                username: Username.dirty('username'),
                password: Password.dirty('password'),
                status: FormzStatus.submissionFailure
              )
            ]);
  });
}
