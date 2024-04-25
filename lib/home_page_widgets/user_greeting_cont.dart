import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class userGreetingCont extends StatelessWidget {
  const userGreetingCont(
      {super.key, required this.screenWidth, required this.username});
  final String username;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: screenWidth - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Color(0xFF1B3B6F),
      ),
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          customText(
            text: 'Welcome,',
            size: 18,
            color: Colors.white,
            weight: FontWeight.w400,
          ),
          SizedBox(
            width: 5,
          ),
          customText(
            text: username,
            size: 20,
            color: Colors.white,
            weight: FontWeight.bold,
          ),
          SizedBox(
            width: 80,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Icon(
              Icons.person,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
