import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app_basic/routes/app_router_config.dart';
import 'package:go_router_app_basic/routes/app_routes_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("Home")),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(Uri(path: "/about").toString());
            },
            child: Text("Go to About"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).pushNamed(MyAppRouterConstants.profileRouteName);
            },
            child: Text("Go to Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).pushNamed(MyAppRouterConstants.contactUsRouteName);
            },
            child: Text("Go to Contact Us"),
          ),
        ],
      ),
    );
  }
}
