import 'package:flutter/material.dart';

class custom_textfield extends StatelessWidget {
  const custom_textfield(
      {super.key,
      required this.screenWidth,
      required this.text,
      required this.top,
      required this.controller});

  final double screenWidth, top;
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Container(
        padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
        width: screenWidth - 40,
        child: TextField(
          controller: controller,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              color: Color(0xFF9EB3C2),
              fontSize: 15,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF9EB3C2)), // Underline color
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white), // Underline color when focused
            ),
          ),
        ),
      ),
    );
  }
}
