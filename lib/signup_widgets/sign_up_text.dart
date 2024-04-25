import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class signUpTxt extends StatelessWidget {
  const signUpTxt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 175,
      right: 203,
      child: customText(
        text: 'Sign Up Form',
        color: Colors.white,
        size: 28,
        weight: FontWeight.bold,
      ),
    );
  }
}
