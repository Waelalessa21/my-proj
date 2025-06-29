import 'package:flutter/material.dart';
import 'package:sayer_version2/common/routing/app_router.dart';
import 'package:sayer_version2/common/routing/routes.dart';

class SayerApp extends StatelessWidget {
  final AppRouter appRouter;
  const SayerApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    //widget that sets up themes, navigation
    return MaterialApp(
      //remove the banner
      debugShowCheckedModeBanner: false,
      //Function that enable navigation inside the application
      onGenerateRoute: appRouter.generateRoutes,
      //initial page in the application
      initialRoute: Routes.login,
    );
  }
}
