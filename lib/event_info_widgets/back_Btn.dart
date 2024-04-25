import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/event_list_page.dart';

class backBtn extends StatelessWidget {
  const backBtn({
    super.key,
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) => EventListPage(userData: username),
          ),
        );
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Row(children: [
          Image.asset(
            'assets/backBtn.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 3,
          ),
          customText(
            text: 'Back',
            color: Colors.black,
            size: 20,
            weight: FontWeight.w400,
          ),
        ]),
      ),
    );
  }
}
