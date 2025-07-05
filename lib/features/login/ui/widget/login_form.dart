import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: TextFormField(
            decoration: InputDecoration(
              //icon to be shown on the field
              prefixIcon: Icon(
                Icons.mobile_friendly,
                color: Colors.grey,
                size: 30,
              ),
              //text to be shown on the field
              hintText: "رقم الجوال",
              hintStyle: TextStyle(color: Colors.grey),
              //when user interact with the field "clicked"
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              //when user interact with the field
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: SizedBox(
            //Fill the width, {0.9, 0.8 of the width}
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                //validate user input, then navigate to otp screen.
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
                "تأكيد",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
