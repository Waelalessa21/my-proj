import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/features/otp/logic/verify_otp_cubit.dart';
import 'package:sayer_version2/features/otp/logic/verify_otp_state.dart';
import 'package:sayer_version2/common/widgets/message_toast.dart';

class OtpCubitListener extends StatelessWidget {
  const OtpCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyOtpCubit, VerifyOtpState>(
      listenWhen:
          (previous, current) =>
              current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.when(
          initial: () {},
          loading:
              () => showDialog(
                context: context,
                barrierDismissible: false,
                builder:
                    (_) => const Center(child: CircularProgressIndicator()),
              ),
          success: () {
            Navigator.pop(context); // Close loading dialog
            showToastMessage(
              context,
              "OTP verified successfully!",
              "assets/images/question.png",
            );
            // Navigate to home screen
            context.pushReplacementNamed(Routes.home);
          },
          error: (message) {
            context.pop(); // Close loading dialog
            showToastMessage(
              context,
              message,
              "assets/images/question.png",
              isError: true,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
