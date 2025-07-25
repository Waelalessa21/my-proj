import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/di/dependency_injection.dart';
import 'package:sayer_version2/common/theme/spacing.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';
import 'package:sayer_version2/common/widgets/white_app_bar.dart';
import 'package:sayer_version2/common/widgets/white_app_layout.dart';
import 'package:sayer_version2/features/otp/logic/verify_otp_cubit.dart';
import 'package:sayer_version2/features/otp/ui/widgets/otp_cubit_listener.dart';
import 'package:sayer_version2/features/otp/ui/widgets/otp_fields.dart';
import 'package:sayer_version2/features/otp/ui/widgets/otp_header.dart';
import 'package:sayer_version2/features/otp/ui/widgets/resend_button.dart';

class OtpScreen extends StatelessWidget {
  final Map<String, dynamic> arguments;

  const OtpScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    final phone = arguments['phone'] as String;
    final otpId = arguments['otpId'] as String;

    return BlocProvider(
      create: (context) {
        final cubit = getIt<VerifyOtpCubit>();
        cubit.phoneNumber = phone;
        cubit.otpId = otpId;
        return cubit;
      },
      child: WhiteAppLayout(
        appBar: WhiteAppBar(),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.defaultSpace.sp),
          child: Column(
            children: [
              OTPHeader(phone: phone),
              SizedBox(height: AppSpacing.spaceBtwItems.h),
              OtpFields(),
              SizedBox(height: AppSpacing.spaceBtwItems.h),
              ResendButton(),
              SizedBox(height: AppSpacing.spaceBtwItems.h),
              AppButton(
                title: "تحقق",
                onPressed: () {
                  context.read<VerifyOtpCubit>().verifyOtpRequest(context);
                },
              ),
              OtpCubitListener(),
            ],
          ),
        ),
      ),
    );
  }
}
