import 'package:flutter/material.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
