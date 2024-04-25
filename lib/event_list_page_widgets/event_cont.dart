import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class EventCont extends StatelessWidget {
  const EventCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
      width: 360,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(1, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              text: 'Example Event Name',
              color: Color(0xFF1B3B6F),
              size: 20,
              weight: FontWeight.bold),
          customText(
              text: 'December 23, 2023',
              color: Color.fromARGB(255, 105, 103, 116),
              size: 15,
              weight: FontWeight.w400),
          Spacer(),
          Container(
            width: 70,
            height: 20,
            decoration: BoxDecoration(
                color: Color(0xFFFFCC48),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: customText(
                  text: 'Sport',
                  color: Colors.white,
                  size: 13,
                  weight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
