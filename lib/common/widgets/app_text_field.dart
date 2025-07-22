import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final FocusNode? focus;

  const AppTextField({
    super.key,
    required this.controller,
    this.validator,
    this.focus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 24.h),
      child: TextFormField(
        // validator: validator,
        controller: controller,
        validator: validator,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
          //default border
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.r),
          ),
          //when user interact with the field "clicked"
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.r),
          ),
          //when user interact with the field
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.r),
          ),
          //error input "things violate validator!"
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        focusNode: focus,
      ),
    );
  }
}
