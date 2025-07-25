import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/di/dependency_injection.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_cubit.dart';
import 'package:sayer_version2/features/login/ui/login_screen.dart';
import 'package:sayer_version2/features/otp/ui/otp_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      //route path is login
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (_) => getIt<GenerateOtpCubit>(),
                child: const LoginScreen(),
              ),
        );

      case Routes.otp:
        final arguments = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => OtpScreen(arguments: arguments),
        );

      //when no correct path is found!
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text("no path"))),
        );
    }
  }
}
