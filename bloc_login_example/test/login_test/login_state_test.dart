import 'package:bloc_login_example/features/login/bloc/login_bloc.dart';
import 'package:bloc_login_example/features/login/models/password.dart';
import 'package:bloc_login_example/features/login/models/username.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';

void main() {
  const username = Username.dirty('username');
  const password = Password.dirty('password');
  group('LoginState', () {
    test('supports value comparisons', () {
      expect(const LoginState(), const LoginState());
    });

    test('returns same object when no properties are passed', () {
      expect(const LoginState().copyWith(), const LoginState());
    });

    test('returns object with updated status when status is passed', () {
      expect(
        const LoginState().copyWith(status: FormzStatus.pure),
        const LoginState(),
      );
    });

    test('returns object with updated username when username is passed', () {
      expect(
        const LoginState().copyWith(username: username),
        const LoginState(username: username),
      );
    });

    test('returns object with updated password when password is passed', () {
      expect(
        const LoginState().copyWith(password: password),
        const LoginState(password: password),
      );
    });
  });
}