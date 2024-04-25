import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class itemCont extends StatelessWidget {
  const itemCont({super.key, required this.text, required this.image});
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 370,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            // decoration: BoxDecoration(color: Colors.black),
            child: Image.asset(image),
          ),
          SizedBox(
            width: 10,
          ),
          customText(
              text: text,
              color: Colors.black,
              size: 15,
              weight: FontWeight.bold),
          Spacer(),
          Container(
            width: 30,
            height: 30,
            child: Image.asset('assets/arrow.png'),
          ),
        ],
      ),
    );
  }
}
