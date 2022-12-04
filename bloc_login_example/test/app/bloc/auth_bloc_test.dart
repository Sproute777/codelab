import 'package:auth_repository/auth_repository.dart';
import 'package:bloc_login_example/features/auth/bloc/auth_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_repository/user_repository.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockUserRepository extends Mock implements UserRepository {}

void main() {
  const user = User('id');
  late AuthRepository authRepository;
  late UserRepository userRepository;

  setUp(() {
    authRepository = _MockAuthRepository();
    when(
      () => authRepository.status,
    ).thenAnswer((_) => const Stream.empty());
    userRepository = _MockUserRepository();
  });

  group('AuthBloc', () {
    test('initial state is AuthState.unknown', () {
      final authBloc = AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      );
      expect(authBloc.state, const AuthState.unregistered());
      authBloc.close();
    });

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is unauthenticated',
      setUp: () {
        when(() => authRepository.status).thenAnswer(
          (_) => Stream.value(AuthStatus.unregistered),
        );
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.unregistered(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [authenticated] when status is authenticated',
      setUp: () {
        when(() => authRepository.status).thenAnswer(
          (_) => Stream.value(AuthStatus.registered),
        );
        when(() => userRepository.getUser()).thenAnswer((_) async => user);
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.registered(user),
      ],
    );
  });

  group('AuthStatusChanged', () {
    blocTest<AuthBloc, AuthState>(
      'emits [authenticated] when status is authenticated',
      setUp: () {
        when(
          () => authRepository.status,
        ).thenAnswer((_) => Stream.value(AuthStatus.registered));
        when(() => userRepository.getUser()).thenAnswer((_) async => user);
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.registered(user),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is unauthenticated',
      setUp: () {
        when(
          () => authRepository.status,
        ).thenAnswer((_) => Stream.value(AuthStatus.unregistered));
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.unregistered(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is authenticated but getUser fails',
      setUp: () {
        when(
          () => authRepository.status,
        ).thenAnswer((_) => Stream.value(AuthStatus.registered));
        when(() => userRepository.getUser()).thenThrow(Exception('oops'));
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.unregistered(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unauthenticated] when status is authenticated '
      'but getUser returns null',
      setUp: () {
        when(
          () => authRepository.status,
        ).thenAnswer((_) => Stream.value(AuthStatus.registered));
        when(() => userRepository.getUser()).thenAnswer((_) async => null);
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.unregistered(),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [unknown] when status is unknown',
      setUp: () {
        when(
          () => authRepository.status,
        ).thenAnswer((_) => Stream.value(AuthStatus.unknown));
      },
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc.add(const AuthEvent.statusSubscription()),
      expect: () => const <AuthState>[
        AuthState.unregistered(),
      ],
    );
  });

  group('AuthLogoutRequested', () {
    blocTest<AuthBloc, AuthState>(
      'calls logOut on authRepository '
      'when AuthLogoutRequested is added',
      build: () => AuthBloc(
        authRepository: authRepository,
        userRepository: userRepository,
      ),
      act: (bloc) => bloc
        ..add(const AuthEvent.statusSubscription())
        ..add(const AuthEvent.logoutRequested()),
      verify: (_) {
        verify(() => authRepository.logOut()).called(1);
      },
    );
  });
}
