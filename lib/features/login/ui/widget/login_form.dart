import 'package:flutter/material.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';
import 'package:sayer_version2/common/widgets/app_text_field.dart';
import 'package:sayer_version2/features/login/ui/widget/visitor.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final formKey = GlobalKey<FormState>();
  //to track what user enter inside the field
  final TextEditingController phoneContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          //valiadtion.
          AppTextField(controller: phoneContorller),
          //phoneController = the value user inserted;
          Visitor(),
          AppButton(
            title: "تسجيل الدخول",
            onPressed: () {
              context.pushNamed(Routes.otp, arguments: phoneContorller.text);
            },
          ),
        ],
      ),
    );
  }
}
