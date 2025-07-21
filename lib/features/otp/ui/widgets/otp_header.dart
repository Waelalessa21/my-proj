import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';
import 'package:sayer_version2/common/theme/spacing.dart';

class OTPHeader extends StatelessWidget {
  final String phone;
  const OTPHeader({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.xs.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: AppSpacing.iconSm.h),
          Text(
            "تحقق من رقم الجوال!",
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.spaceBtwItems.h),
          Text(
            'تم إرسال كود على الرقم ($phone)',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.spaceBtwSections.h),
          Text(
            "من فضلك ادخل رمز التحقق المكون من ٤ ارقام",
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(color: AppColors.darkGrey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
