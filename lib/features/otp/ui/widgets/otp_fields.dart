import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class OtpFields extends StatelessWidget {
  OtpFields({super.key});

  //keep track ot what user enter inside the field
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          MediaQuery.of(context).size.width *
          0.7, //width of the whole widget not individual field
      child: PinCodeTextField(
        controller: otpController, //pass the tracking var
        appContext: context,
        autoFocus: true,
        cursorColor: Colors.black,
        keyboardType: TextInputType.number,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 50.h,
          fieldWidth: 43.w,
          activeFillColor: AppColors.middleColor,
          borderWidth: 3,
          activeColor: AppColors.middleColor,
          inactiveColor: AppColors.middleColor.withOpacity(0.6),
          inactiveFillColor: Colors.white,
          selectedColor: Colors.blue,
          selectedFillColor: AppColors.middleColor,
        ),
        onCompleted: (value) {
          //we'll do this later.
        },
      ),
    );
  }
}
