import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;

  const AppTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
      child: TextFormField(
        // validator: validator,
        controller: controller,
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
    );
  }
}
