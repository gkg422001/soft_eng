import 'package:flutter/material.dart';

class custTxtField extends StatelessWidget {
  const custTxtField({super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      width: 250,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF1B3B6F),
          width: 2.0,
        ),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 178, 173, 173),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
