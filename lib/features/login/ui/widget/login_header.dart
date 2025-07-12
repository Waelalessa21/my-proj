import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        children: [
          Image.asset("assets/images/logo.png", height: 150.w),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    //Specify common features.
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: " سجل دخولك و ابدأ رحلتك مع ",
                        style: TextStyle(color: Color(0xFF64748B)),
                      ),
                      TextSpan(
                        text: "ساير",
                        style: TextStyle(color: AppColors.ssecondery),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "قم بإدخال رقم الجوال لانشاء حسابك في منصة ساير ",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.ssecondery),
          ),
          SizedBox(height: 10.h),
          Text(
            "سنقوم بإرسال رمز تحقق مكون من 4 أرقام",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.ssecondery),
          ),
        ],
      ),
    );
  }
}
