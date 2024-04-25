import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class forgetPassBtn extends StatelessWidget {
  const forgetPassBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 535,
      left: 45,
      child: TextButton(
        onPressed: () {},
        child: customText(
          text: 'Forgot Password?',
          color: Colors.white,
          size: 14,
          weight: FontWeight.w400,
        ),
      ),
    );
  }
}
