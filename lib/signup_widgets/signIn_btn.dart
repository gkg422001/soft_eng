import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
// import 'package:soft/main.dart';
import 'package:soft/screens/login.dart';
import 'package:soft/user_info.dart';
import 'package:soft/user_service.dart';

class signInBtn extends StatelessWidget {
  signInBtn(
      {super.key,
      required this.username,
      required this.email,
      required this.password});
  final String username, email, password;
  final UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 610,
      left: 60, //45
      child: Container(
        width: 290, //320
        height: 50,
        child: ElevatedButton(
          onPressed: () async {
            var userInfo = UserInfo(username, email, password);
            await _userService.addUser(userInfo);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LogIn(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF21295C)),
          child: const customText(
              text: 'Register',
              color: Colors.white,
              size: 20,
              weight: FontWeight.bold),
        ),
      ),
    );
  }
}
