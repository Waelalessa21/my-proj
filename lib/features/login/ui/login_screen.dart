import 'package:flutter/material.dart';
import 'package:sayer_version2/features/login/ui/widget/login_form.dart';
import 'package:sayer_version2/features/login/ui/widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Solve the problem of app bar!
      body: SafeArea(
        child: Column(
          children: [LoginHeader(), SizedBox(height: 30), LoginForm()],
        ),
      ),
    );
  }
}
