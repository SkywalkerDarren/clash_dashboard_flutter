import 'package:clash_dashboard_flutter/pages/home/home_page.dart';
import 'package:clash_dashboard_flutter/pages/login/login_page.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

class MyRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<List<RouteSettings>> {
  static MyRouterDelegate? _instance;

  MyRouterDelegate._();

  factory MyRouterDelegate() {
    return _instance ??= MyRouterDelegate._();
  }

  final _pages = <Page>[LoginPage()];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: (route, result) {
        if (_pages.isNotEmpty) {
          _pages.removeLast();
        }
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => key;

  @override
  List<Page> get currentConfiguration => List.of(_pages);

  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) async {}

  void loginToHomePage() {
    _pages.clear();
    _pages.add(HomePage());
    notifyListeners();
  }
}

class MyRouteInformationParser
    extends RouteInformationParser<List<RouteSettings>> {
  const MyRouteInformationParser() : super();

  @override
  Future<List<RouteSettings>> parseRouteInformation(
      RouteInformation routeInformation) {
    return Future.value([]);
  }

  @override
  RouteInformation? restoreRouteInformation(List<RouteSettings> configuration) {
    return null;
  }
}
