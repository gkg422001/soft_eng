import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/login.dart';
// import 'package:soft/screens/signUp.dart';

class backBtn extends StatelessWidget {
  const backBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) => LogIn(),
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
            width: 5,
          ),
          customText(
            text: 'Back',
            color: Colors.black,
            size: 20,
            weight: FontWeight.bold,
          ),
        ]),
      ),
    );
  }
}
