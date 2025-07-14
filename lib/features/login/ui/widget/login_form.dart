import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextFormField(
            decoration: InputDecoration(
              //icon to be shown on the field
              prefixIcon: Icon(
                Icons.mobile_friendly,
                color: Colors.grey,
                size: 30.sp,
              ),
              //text to be shown on the field
              hintText: "رقم الجوال",
              hintStyle: TextStyle(color: Colors.grey),
              //when user interact with the field "clicked"
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
              //when user interact with the field
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30.0.sp),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                //control the container shape [circle, recetangle, etc.]
                shape: BoxShape.circle,
                //shadow.
                boxShadow: [
                  BoxShadow(
                    color: AppColors.info.withOpacity(0.7),
                    offset: Offset(0, 0),
                    spreadRadius: -1,
                    blurRadius: 14,
                  ),
                ],
              ),
              child: Text("زائر؟"),
            ),
          ),
        ),
        AppButton(title: "تسجيل الدخول"),
      ],
    );
  }
}
