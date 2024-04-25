import 'package:flutter/material.dart';
import 'package:soft/login_widgets/dog_bg_cont.dart';
import 'package:soft/login_widgets/forget_pass_button.dart';
import 'package:soft/login_widgets/sign_in_button.dart';
import 'package:soft/login_widgets/sign_in_text.dart';
import 'package:soft/login_widgets/custom_txt_field.dart';
import 'package:soft/login_widgets/sign_up_button.dart';
import 'package:soft/login_widgets/soc_med_buttons.dart';
import 'package:soft/login_widgets/welcome_text.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
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
          const DogBG(),
          const welcomeText(),
          const signInText(),
          custom_textfield(
            screenWidth: screenWidth,
            text: 'Username',
            top: 300,
            controller: firstController,
          ),
          custom_textfield(
            screenWidth: screenWidth,
            text: 'Password',
            top: 370,
            controller: secondController,
          ),
          sign_in_button(
              username: firstController.text, password: secondController.text),
          forgetPassBtn(),
          signUpBtn(),
          const soc_med_buttons(),
        ],
      ),
    );
  }
}
