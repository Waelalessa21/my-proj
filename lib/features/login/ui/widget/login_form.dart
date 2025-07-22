import 'package:flutter/material.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';
import 'package:sayer_version2/common/widgets/app_text_field.dart';
import 'package:sayer_version2/common/widgets/message_toast.dart';
import 'package:sayer_version2/features/login/ui/widget/visitor.dart';
import 'package:sayer_version2/common/helpers/app_regex.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController phoneContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FocusNode phoneNumberFocusNode = FocusNode();

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            controller: phoneContorller,
            validator: AppRegex.validatePhoneNumber,
            focus: phoneNumberFocusNode,
          ),
          Visitor(),
          AppButton(
            title: "تسجيل الدخول",
            onPressed: () {
              final errorMessage = AppRegex.validatePhoneNumber(
                phoneContorller.text,
              );
              if (errorMessage == null) {
                //no error means open otp screen
                context.pushNamed(Routes.otp, arguments: phoneContorller.text);
              } else {
                //there is error; show notification.
                showToastMessage(
                  context,
                  errorMessage,
                  'assets/images/question.png',
                );

                formKey.currentState!.validate();
              }
            },
          ),
        ],
      ),
    );
  }
}
