import 'package:go_router/go_router.dart';
import 'package:go_router_app_basic/routes/app_routes_constant.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(path: "/", name: MyAppRouterConstants.homeRouteName),
        GoRoute(path: "/about", name: "about"),
      ],
    );
    return router;
  }
}
