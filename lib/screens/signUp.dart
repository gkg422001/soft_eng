import 'package:flutter/material.dart';
// import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/login_widgets/dog_bg_cont.dart';
import 'package:soft/signup_widgets/phone_number_cont.dart';
import 'package:soft/signup_widgets/select_txt.dart';
import 'package:soft/signup_widgets/sign_up_cont_txt.dart';
import 'package:soft/signup_widgets/sign_up_text.dart';

// import '../signup_widgets/signIn_btn.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          selectTxt(),
          customCont(
            image: 'assets/telephoneIcon.png',
            header: 'Mobile Number',
            text1: 'You only need to mention a phone',
            text2: 'number and put the code from SMS',
            text3: '',
            top: 330,
          ),
          customCont(
            header: 'Facebook',
            text1: 'You only need to enter your',
            text2: 'Facebook account and its password',
            text3: '',
            image: 'assets/FBicon.png',
            top: 415,
          ),
          customCont(
            header: 'Google Account',
            text1: 'You only need to enter your Google',
            text2: 'account, its password, and enter the',
            text3: 'code from your email',
            image: 'assets/Gicon.png.png',
            top: 500,
          ),
          // signInBtn()
        ],
      ),
    );
  }
}
