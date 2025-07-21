import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class Visitor extends StatelessWidget {
  const Visitor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
