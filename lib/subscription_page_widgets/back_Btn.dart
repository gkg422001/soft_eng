import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/user_profile_page.dart';

class backBtn5 extends StatelessWidget {
  const backBtn5({
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
            builder: (contex) => ProfilePage(userData: username),
          ),
        );
      },
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Row(children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Color(0xFF1B3B6F), // Change this color to the desired color
              BlendMode.srcIn,
            ),
            child: Image.asset(
              'assets/backBtn.png',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          customText(
            text: 'Back',
            color: Color(0xFF1B3B6F),
            size: 20,
            weight: FontWeight.bold,
          ),
        ]),
      ),
    );
  }
}
