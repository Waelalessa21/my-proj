import 'package:flutter/material.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            //control the container shape [circle, recetangle, etc.]
            shape: BoxShape.circle,
            //shadow.
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.2),
                blurRadius: 15,
                spreadRadius: -8,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: Icon(Icons.info_outline_rounded, color: AppColors.info),
        ),
        SizedBox(width: 10),
        Text(
          "بمجرد انشاء الحساب أنت توافق على الشروط و الاحكام",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
