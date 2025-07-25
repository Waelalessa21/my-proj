import 'package:flutter/material.dart';
import 'package:sayer_version2/common/theme/colors.dart';
import 'package:sayer_version2/features/login/ui/widget/login_cubit_listener.dart';
import 'package:sayer_version2/features/login/ui/widget/login_form.dart';
import 'package:sayer_version2/features/login/ui/widget/login_header.dart';
import 'package:sayer_version2/features/login/ui/widget/terms_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.0, -0.2),
          colors: [AppColors.gradientStart, AppColors.gradientend],
        ),
      ),
      child: Scaffold(
        //Prevent scaffold to have default color.
        backgroundColor: Colors.transparent,
        //Solve the problem of app bar!
        body: SafeArea(
          child: SingleChildScrollView(
            //User isn't allowed to scroll.
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  LoginHeader(),
                  LoginForm(),
                  TermsAndConditions(),
                  LoginCubitListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
