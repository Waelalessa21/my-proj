import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/routing/app_router.dart';

import 'package:sayer_version2/common/routing/routes.dart';

class SayerApp extends StatelessWidget {
  final AppRouter appRouter;
  const SayerApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    //widget that sets up themes, navigation
    return ScreenUtilInit(
      //reference screen
      designSize: Size(430, 932),
      child: MaterialApp(
        //remove the banner
        debugShowCheckedModeBanner: false,
        //Function that enable navigation inside the application
        onGenerateRoute: appRouter.generateRoutes,
        //initial page in the application
        initialRoute: Routes.login,
        //Design default theme
        theme: ThemeData(
          fontFamily: "Montserrat", //default application font
        ),
        //lanuages will be used inside the app
        supportedLocales: [Locale('ar'), Locale('en')],
        //introduce localiztion to app widgets, icons, and material
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        //define the default lang
        locale: Locale('ar'),
      ),
    );
  }
}
