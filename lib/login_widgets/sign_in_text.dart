import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class signInText extends StatelessWidget {
  const signInText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220,
      right: 220,
      child: customText(
        text: 'Sign in to Continue',
        color: Colors.white,
        size: 17,
        weight: FontWeight.w400,
      ),
    );
  }
}
