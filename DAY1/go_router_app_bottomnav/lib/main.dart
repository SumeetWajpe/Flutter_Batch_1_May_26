import 'package:flutter/material.dart';
import 'package:go_router_app/project/routes/app_route_config.dart';

void main() => runApp(MyApp(isAuth: true));

class MyApp extends StatelessWidget {
  final bool isAuth;

  const MyApp({super.key, required this.isAuth});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: MyAppRouter.returnRouter(isAuth));
  }
}
