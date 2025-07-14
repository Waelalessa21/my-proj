import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/spacing.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';
import 'package:sayer_version2/common/widgets/white_app_bar.dart';
import 'package:sayer_version2/common/widgets/white_app_layout.dart';
import 'package:sayer_version2/features/otp/ui/widgets/otp_fields.dart';
import 'package:sayer_version2/features/otp/ui/widgets/otp_header.dart';
import 'package:sayer_version2/features/otp/ui/widgets/resend_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WhiteAppLayout(
      appBar: WhiteAppBar(),
      child: Padding(
        padding: EdgeInsets.all(AppSpacing.defaultSpace.sp),
        child: Column(
          children: [
            OTPHeader(),
            SizedBox(height: AppSpacing.spaceBtwItems.h),
            OtpFields(),
            SizedBox(height: AppSpacing.spaceBtwItems.h),
            ResendButton(),
            SizedBox(height: AppSpacing.spaceBtwItems.h),
            AppButton(title: "تحقق"),
          ],
        ),
      ),
    );
  }
}
