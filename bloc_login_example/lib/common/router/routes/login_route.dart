
part of 'app_routes.dart';

@TypedGoRoute<LoginRoute>(
  path: '/login',
)
class LoginRoute extends GoRouteData {
  const LoginRoute({this.fromPage});
  final String? fromPage;

  @override
  Widget build(BuildContext context) => const LoginPage();
}