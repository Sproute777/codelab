import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

import 'common/router/app_router.dart';
import 'features/auth/bloc/auth_bloc.dart';

class App extends StatelessWidget {
  const App({
    required this.userRepository,
    required this.authRepository,
    super.key,
  });

  final AuthRepository authRepository;
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(
            authRepository: authRepository, userRepository: userRepository),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final _authBloc = context.read<AuthBloc>();
  late final _appRouter = AppRouter.createRouter(_authBloc);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      routerDelegate: _appRouter.routerDelegate,
      routeInformationParser: _appRouter.routeInformationParser,
      routeInformationProvider: _appRouter.routeInformationProvider,
    );
  }
}
