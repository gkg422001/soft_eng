import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/signup_widgets/bottom_sheet_widgets/back_Btn.dart';
import 'package:soft/signup_widgets/bottom_sheet_widgets/left_cont.dart';
import 'package:soft/signup_widgets/bottom_sheet_widgets/number_txtfield.dart';

import 'bottom_sheet_widgets/continue_btn.dart';

class bottomSheet extends StatelessWidget {
  const bottomSheet({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xFF1B3B6F),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      height: 300,
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backBtn(),
          SizedBox(
            height: 15,
          ),
          customText(
              text: 'Welcome',
              color: Colors.white,
              size: 25,
              weight: FontWeight.bold),
          customText(
              text: 'To continue enter mobile number',
              color: Colors.white,
              size: 14,
              weight: FontWeight.w400),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              leftContainer(),
              SizedBox(
                width: 10,
              ),
              numberTextField(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          continueBtn(),
        ],
      ),
    );
  }
}
