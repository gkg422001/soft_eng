import 'package:flutter/material.dart';
import 'package:soft/another_signup_widgets/cust_txt_field.dart';
// import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/login_widgets/dog_bg_cont.dart';
import 'package:soft/signup_widgets/signIn_btn.dart';
import 'package:soft/signup_widgets/sign_up_cont_txt.dart';
import 'package:soft/signup_widgets/sign_up_text.dart';
// import 'package:soft/user_service.dart';

class SignUpPage2 extends StatelessWidget {
  SignUpPage2({super.key});
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController thirdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Color(0xFF1B3B6F),
            ),
          ),
          DogBG(),
          signUpTxt(),
          signUpContTxt(),
          customTxtField(
            text: 'Username',
            icon: Icons.person,
            top: 320,
            controller: firstController,
          ),
          customTxtField(
            text: 'Email',
            icon: Icons.email,
            top: 380,
            controller: secondController,
          ),
          customTxtField(
            text: 'Password',
            icon: Icons.password,
            top: 440,
            controller: thirdController,
          ),
          signInBtn(
            username: firstController.text,
            password: thirdController.text,
            email: secondController.text,
          ),
        ],
      ),
    );
  }
}
