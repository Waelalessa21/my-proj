import 'package:flutter/material.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/features/login/ui/login_screen.dart';
import 'package:sayer_version2/features/otp/ui/otp_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      //route path is login
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case Routes.otp:
        final phoneNumber = settings.arguments.toString();
        return MaterialPageRoute(builder: (_) => OtpScreen(phone: phoneNumber));

      //when no correct path is found!
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("no path"))),
        );
    }
  }
}
