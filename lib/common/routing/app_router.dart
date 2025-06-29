import 'package:flutter/material.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/features/login/ui/login_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      //route path is login
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      //when no correct path is found!
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("no path"))),
        );
    }
  }
}
