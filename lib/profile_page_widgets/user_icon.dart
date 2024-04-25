import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class userIcon extends StatelessWidget {
  const userIcon({
    super.key,
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 160,
      decoration: BoxDecoration(
          color: Color(0xFF1B3B6F), borderRadius: BorderRadius.circular(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          customText(
              text: username,
              color: Colors.white,
              size: 20,
              weight: FontWeight.bold),
        ],
      ),
    );
  }
}
