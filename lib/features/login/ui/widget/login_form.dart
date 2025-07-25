import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/helpers/app_regex.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';
import 'package:sayer_version2/common/widgets/app_text_field.dart';
import 'package:sayer_version2/common/widgets/message_toast.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_cubit.dart';
import 'package:sayer_version2/features/login/ui/widget/visitor.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController phoneController;
  late FocusNode phoneNumberFocusNode;

  @override
  void initState() {
    super.initState();
    phoneController = context.read<GenerateOtpCubit>().phoneNumberController;
    phoneNumberFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<GenerateOtpCubit>().formKey;

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextField(
            controller: phoneController,
            validator: AppRegex.validatePhoneNumber,
            focus: phoneNumberFocusNode,
          ),
          const Visitor(),
          AppButton(
            title: "تسجيل الدخول",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<GenerateOtpCubit>().phoneNumber =
                    phoneController.text;
                context.read<GenerateOtpCubit>().generateOtpRequest(context);
              } else {
                final errorMessage = AppRegex.validatePhoneNumber(
                  phoneController.text,
                );
                if (errorMessage != null) {
                  showToastMessage(
                    context,
                    errorMessage,
                    'assets/images/question.png',
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    phoneNumberFocusNode.dispose();
    super.dispose();
  }
}
