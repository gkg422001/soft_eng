import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
// import 'package:soft/main.dart';
import 'package:soft/screens/another_signup.dart';
import 'package:soft/screens/home_page.dart';
import 'package:soft/user_info.dart';
import 'package:soft/user_service.dart';

class sign_in_button extends StatelessWidget {
  sign_in_button({super.key, required this.username, required this.password});
  final String username, password;
  final UserService _userService = UserService();
  // final MyApp myAppInstance = MyApp(); // newly added
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // UserService _userService = myAppInstance.userService; //newly added
    return Positioned(
      top: 460,
      left: 45, //45
      child: Container(
        width: screenWidth - 90, //320
        height: 50,
        child: ElevatedButton(
          onPressed: () async {
            List<UserInfo> users = await _userService.getUsers();
            bool isPresent = false;
            for (var user in users) {
              print("Username:");
              print(user.username);
              print("Password:");
              print(user.password);
              if (username == user.username && password == user.password) {
                print(
                    "Match found: Username: ${user.username}, Password: ${user.password}");
                isPresent = true;
                break;
              }
            }
            if (isPresent == true) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(
                    userData: username,
                  ),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpPage2(),
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF21295C)),
          child: const customText(
              text: 'Sign In',
              color: Colors.white,
              size: 20,
              weight: FontWeight.bold),
        ),
      ),
    );
  }
}
