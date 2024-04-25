import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class signUpContTxt extends StatelessWidget {
  const signUpContTxt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 210,
      right: 228,
      child: customText(
        text: 'Sign up to Continue',
        color: Colors.white,
        size: 16,
        weight: FontWeight.w400,
      ),
    );
  }
}
