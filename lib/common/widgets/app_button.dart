import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const AppButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: SizedBox(
        //Fill the width, {0.9, 0.8 of the width}
        width: double.infinity.w,
        height: 60.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            //Button color
            backgroundColor: Color(0xFF112D4E),
            //control the shadow
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleSmall!.apply(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
