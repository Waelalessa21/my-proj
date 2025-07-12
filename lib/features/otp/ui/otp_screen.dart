import 'package:flutter/material.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/theme/colors.dart';
import 'package:sayer_version2/common/widgets/app_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Back"),
            ),
            AppButton(title: "تحقق"),
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
            ),
          ],
        ),
      ),
    );
  }
}
