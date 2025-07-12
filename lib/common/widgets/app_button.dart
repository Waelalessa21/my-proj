import 'package:flutter/material.dart';
import 'package:sayer_version2/common/helpers/extensions.dart';
import 'package:sayer_version2/common/routing/routes.dart';
import 'package:sayer_version2/common/theme/colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  //final att to handle different functions.
  //final datatype name.
  const AppButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        //Fill the width, {0.9, 0.8 of the width}
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            //validate user input, then navigate to otp screen.
            //give the new screen information about widget tree

            context.pushNamed(Routes.otp);
          },
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
