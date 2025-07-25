import 'package:flutter/material.dart';
import 'package:sayer_version2/common/di/dependency_injection.dart';
import 'package:sayer_version2/common/routing/app_router.dart';
import 'package:sayer_version2/sayer_app.dart';

void main() async {
  //starting point
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(SayerApp(appRouter: AppRouter()));
}
