import 'package:auth_repository/auth_repository.dart';
import 'package:bloc_login_example/app.dart';
import 'package:bloc_login_example/features/auth/auth.dart';
import 'package:bloc_login_example/features/home/view/home_page.dart';
import 'package:bloc_login_example/features/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_repository/user_repository.dart';
import 'package:bloc_test/bloc_test.dart';


class MockUser extends Mock implements User {}

class MockAuthRepository extends Mock implements AuthRepository {}
class MockUserRepository extends Mock implements UserRepository {}

class MockAuthBloc extends MockBloc<AuthEvent,AuthState> implements AuthBloc {}

void main() {
  group('App', () {
    late AuthRepository authRepository;
    late UserRepository userRepository;

    setUp(() {
      authRepository = MockAuthRepository();
      userRepository = MockUserRepository();
      when(() => authRepository.status).thenAnswer(
        (_) => const Stream.empty(),
      );
      // when(() => authenticationRepository.currentUser).thenReturn(user);
      // when(() => user.isNotEmpty).thenReturn(true);
      // when(() => user.isEmpty).thenReturn(false);
      // when(() => user.email).thenReturn('test@gmail.com');
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        App(authRepository: authRepository, userRepository: userRepository),
      );
      await tester.pump();
      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    late AuthRepository authRepository;
    late AuthBloc authBloc;

    setUp(() {
      authRepository = MockAuthRepository();
      authBloc = MockAuthBloc();
    });

    testWidgets('navigates to LoginPage when unauthenticated', (tester) async {
      when(() => authBloc.state).thenReturn(const AuthState.unregistered());
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: authRepository,
          child: MaterialApp(
            home: BlocProvider.value(value: authBloc, child: const AppView()),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(LoginPage), findsOneWidget);
    });

    testWidgets('navigates to HomePage when authenticated', (tester) async {
      final user = MockUser();
      when(() => user.id).thenReturn('test_id');
      when(() => authBloc.state).thenReturn(AuthState.registered(user));
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: authRepository,
          child: MaterialApp(
            home: BlocProvider.value(value: authBloc, child: const AppView()),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
    });
  }); }


