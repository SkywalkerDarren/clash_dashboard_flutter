import 'package:clash_dashboard_flutter/pages/my_route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clash Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: const MyRouteInformationParser(),
    );
  }
}