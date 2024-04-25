import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class leftContainer extends StatelessWidget {
  const leftContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 45,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            'assets/blackPhone.png',
            height: 30,
            width: 30,
          ),
          customText(
              text: '+63',
              color: Colors.black,
              size: 20,
              weight: FontWeight.bold),
        ],
      ),
    );
  }
}
