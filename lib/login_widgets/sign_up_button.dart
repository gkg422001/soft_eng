import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/another_signup.dart';
// import 'package:soft/screens/signUp.dart';

class signUpBtn extends StatelessWidget {
  const signUpBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 535,
      left: 280,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage2(),
            ),
          );
        },
        child: customText(
          text: 'Sign Up',
          color: Colors.white,
          size: 14,
          weight: FontWeight.w400,
        ),
      ),
    );
  }
}
