import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/home_page_with_event.dart';

class startEventBtn extends StatelessWidget {
  const startEventBtn({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300, //320
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contex) => HomeWithEvent(
                  userData: username,
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF009340)),
          child: const customText(
              text: 'Start Event',
              color: Colors.white,
              size: 20,
              weight: FontWeight.bold),
        ),
      ),
    );
  }
}
