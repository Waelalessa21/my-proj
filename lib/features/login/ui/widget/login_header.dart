import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logo.png"),
        SizedBox(height: 40),
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
                style: TextStyle(color: Color(0xFF031C9E)),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          "قم بإدخال رقم الجوال لانشاء حسابك في منصة ساير ",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF031C9E),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "سنقوم بإرسال رمز تحقق مكون من 4 أرقام",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF031C9E),
          ),
        ),
      ],
    );
  }
}
