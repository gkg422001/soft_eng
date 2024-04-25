import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class selectTxt extends StatelessWidget {
  const selectTxt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 300,
      right: 110,
      child: customText(
        text: 'Select Type of Registration',
        color: Colors.white,
        size: 15,
        weight: FontWeight.bold,
      ),
    );
  }
}
