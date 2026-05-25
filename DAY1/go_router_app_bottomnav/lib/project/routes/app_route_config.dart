import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app/pages/about.dart';
import 'package:go_router_app/pages/contact_us.dart';
import 'package:go_router_app/pages/error_page.dart';
import 'package:go_router_app/pages/home.dart';
import 'package:go_router_app/pages/login.dart';
import 'package:go_router_app/pages/profile.dart';
import 'package:go_router_app/project/routes/app_route_constants.dart';
import 'package:go_router_app/screen/mainscreen.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return MainScreen(child: child);
          },
          routes: [
            GoRoute(
              name: MyAppRouteConstants.homeRouteName,
              path: '/',
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: Home());
              },
            ),

            GoRoute(
              name: MyAppRouteConstants.contactUsRouteName,
              path: '/contact_us',
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: ContactUS());
              },
            ),

            GoRoute(
              name: MyAppRouteConstants.loginRouteName,
              path: '/login',
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: Login());
              },
            ),

            GoRoute(
              name: MyAppRouteConstants.profileRouteName,
              path: '/profile/:username/:userid',
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: Profile(
                    userid: state.pathParameters['userid']!,
                    username: state.pathParameters['username']!,
                  ),
                );
              },
            ),

            GoRoute(
              name: MyAppRouteConstants.aboutRouteName,
              path: '/about',
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: About());
              },
            ),
          ],
        ),
      ],

      errorPageBuilder: (context, state) {
        return MaterialPage(child: ErrorPage());
      },

      redirect: (context, state) {
        final isGoingToProfile = state.matchedLocation.startsWith('/profile');

        if (!isAuth && isGoingToProfile) {
          return context.namedLocation(MyAppRouteConstants.loginRouteName);
        }

        return null;
      },
    );
  }
}
