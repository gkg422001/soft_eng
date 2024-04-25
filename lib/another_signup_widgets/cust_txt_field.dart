import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:soft/user_service.dart';

class customTxtField extends StatelessWidget {
  customTxtField(
      {super.key,
      required this.text,
      required this.icon,
      required this.top,
      required this.controller});
  final String text;
  final IconData icon;
  final double top;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 25,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF1B3B6F),
            width: 2.0,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
        width: 350,
        height: 45,
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              child: Icon(
                icon,
                color: Color(0xFF1B3B6F),
              ),
            ),
            SizedBox(width: 25),
            Container(
              width: 270,
              height: 45,
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
            ),
          ],
        ),
      ),
    );
  }
}
