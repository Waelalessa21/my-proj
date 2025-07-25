import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_cubit.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_state.dart';
import 'package:sayer_version2/common/widgets/message_toast.dart';

class LoginCubitListener extends StatelessWidget {
  const LoginCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GenerateOtpCubit, GenerateOtpState>(
      listenWhen:
          (previous, current) =>
              current is Loading ||
              current is PhoneNumberSubmitted ||
              current is Error,
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
          phoneNumberSubmitted: () {
            Navigator.pop(context);
            showToastMessage(
              context,
              "OTP sent successfully",
              "assets/images/question.png",
            );
            // Navigate to OTP screen with phone number and OTP ID
            final phoneNumber =
                context.read<GenerateOtpCubit>().phoneNumber.isNotEmpty
                    ? context.read<GenerateOtpCubit>().phoneNumber
                    : context
                        .read<GenerateOtpCubit>()
                        .phoneNumberController
                        .text;
            final otpId = context.read<GenerateOtpCubit>().otpId;
            context.pushNamed(
              Routes.otp,
              arguments: {'phone': phoneNumber, 'otpId': otpId},
            );
          },
          error: (message) {
            context.pop();
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
