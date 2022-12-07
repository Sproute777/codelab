import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '/features/auth/bloc/auth_bloc.dart';
import 'go_router_refresh_stream.dart';
import 'routes/app_routes.dart';

abstract class AppRouter {
  const AppRouter._();
  static GoRouter createRouter(AuthBloc authBloc) {
    return GoRouter(
        restorationScopeId: 'router',
        initialLocation: '/login',
        routes: $appRoutes,
        //refreshListenable: ,
        redirect: (context, state) {
          final loggedIn = context.read<AuthBloc>().state.isLogin();
          final loggingIn = state.subloc == const LoginRoute().location;

          if (!loggedIn && !loggingIn) {
            return '/login';
          }

          // if the user is logged in but still on the login page, send them to
          // the home page
          if (loggingIn && loggedIn) {
            final fromPage = state.queryParams['fromPage'];
            if (fromPage != null) return fromPage;
            return '/home';
          }

          // no need to redirect at all
          return null;
        },
        refreshListenable: GoRouterRefreshStream(authBloc.stream));
  }
}
