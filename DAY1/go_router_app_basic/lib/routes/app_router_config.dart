import 'package:go_router/go_router.dart';
import 'package:go_router_app_basic/pages/about.dart';
import 'package:go_router_app_basic/pages/contactus.dart';
import 'package:go_router_app_basic/pages/home.dart';
import 'package:go_router_app_basic/pages/profile.dart';
import 'package:go_router_app_basic/routes/app_routes_constant.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          name: MyAppRouterConstants.homeRouteName,
          builder: (context, state) {
            return Home();
          },
        ),
        GoRoute(
          path: "/about",
          name: MyAppRouterConstants.aboutRouteName,
          builder: (context, state) {
            return About();
          },
        ),
        GoRoute(
          path: "/profile",
          name: MyAppRouterConstants.profileRouteName,
          builder: (context, state) {
            return Profile();
          },
        ),
        GoRoute(
          path: "/contactus",
          name: MyAppRouterConstants.contactUsRouteName,
          builder: (context, state) {
            return ContactUs();
          },
        ),
      ],
    );
    return router;
  }
}
