import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "إعادة الإرسال بعد ١٢٠ ثانية",
      style: TextStyle(color: AppColors.darkerGrey, fontSize: 11.0.sp),
    );
  }
}
