
import 'package:bloc_login_example/features/login/bloc/login_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const username = 'mock-username';
  const password = 'mock-password';
  group('LoginEvent', () {
    group('LoginUsernameChanged', () {
      test('supports value comparisons', () {
        expect(const LoginEvent.usernameChanged(username), const LoginEvent.usernameChanged(username));
      });
    });

    group('LoginPasswordChanged', () {
      test('supports value comparisons', () {
        expect(const LoginEvent.passwordChanged(password), const LoginEvent.passwordChanged(password));
      });
    });

    group('LoginSubmitted', () {
      test('supports value comparisons', () {
        expect(const LoginEvent.submitted(), const LoginEvent.submitted());
      });
    });
  });
}