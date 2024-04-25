import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class continueBtn extends StatelessWidget {
  const continueBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300, //320
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF21295C)),
          child: const customText(
              text: 'Continue',
              color: Colors.white,
              size: 20,
              weight: FontWeight.bold),
        ),
      ),
    );
  }
}
