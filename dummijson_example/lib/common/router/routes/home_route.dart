part of 'app_routes.dart';


@TypedGoRoute<HomeRoute>(
  path: '/home',
)
class HomeRoute extends GoRouteData {
  const HomeRoute({this.fromPage});
  final String? fromPage;

  @override
  Widget build(BuildContext context) => const HomePage();
}