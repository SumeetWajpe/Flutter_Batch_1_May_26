import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app/project/routes/app_route_constants.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  int _currentIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    if (location == '/') {
      return 0;
    }

    if (location.startsWith('/contact_us')) {
      return 1;
    }

    if (location.startsWith('/about')) {
      return 2;
    }

    if (location.startsWith('/profile')) {
      return 3;
    }

    return 0;
  }

  void _onTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.goNamed(MyAppRouteConstants.homeRouteName);
        break;

      case 1:
        context.goNamed(MyAppRouteConstants.contactUsRouteName);
        break;

      case 2:
        context.goNamed(MyAppRouteConstants.aboutRouteName);
        break;

      case 3:
        context.goNamed(
          MyAppRouteConstants.profileRouteName,
          pathParameters: {'username': 'sumeet', 'userid': '101'},
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,

      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex(context),
        onDestinationSelected: (index) {
          _onTap(context, index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.contact_page_outlined),
            selectedIcon: Icon(Icons.contact_page),
            label: 'Contact',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: 'About',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
