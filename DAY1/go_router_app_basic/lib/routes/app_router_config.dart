import 'package:go_router/go_router.dart';
import 'package:go_router_app_basic/pages/about.dart';
import 'package:go_router_app_basic/pages/contactus.dart';
import 'package:go_router_app_basic/pages/home.dart';
import 'package:go_router_app_basic/pages/login.dart';
import 'package:go_router_app_basic/pages/profile.dart';
import 'package:go_router_app_basic/routes/app_routes_constant.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
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
          path: "/profile/:username/:userid",
          name: MyAppRouterConstants.profileRouteName,
          builder: (context, state) {
            return Profile(
              username: state.pathParameters['username']!,
              userid: state.pathParameters['userid']!,
            );
          },
        ),
        GoRoute(
          path: "/contactus",
          name: MyAppRouterConstants.contactUsRouteName,
          builder: (context, state) {
            return ContactUs();
          },
        ),
        GoRoute(
          path: "/login",
          name: MyAppRouterConstants.loginRouteName,
          builder: (context, state) {
            return Login();
          },
        ),
      ],
      redirect: (context, state) {
        // isAuth -> Should be an app state
        if (!isAuth &&
            state.matchedLocation.startsWith(
              '/${MyAppRouterConstants.profileRouteName}',
            )) {
          return context.namedLocation((MyAppRouterConstants.loginRouteName));
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
