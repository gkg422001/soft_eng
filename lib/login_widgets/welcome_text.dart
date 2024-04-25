import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class welcomeText extends StatelessWidget {
  const welcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 175,
      right: 250,
      child: customText(
        text: 'Welcome',
        color: Colors.white,
        size: 28,
        weight: FontWeight.bold,
      ),
    );
  }
}
