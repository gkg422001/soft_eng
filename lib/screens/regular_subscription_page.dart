import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/reg_sub_widgets/back_Btn.dart';
import 'package:soft/reg_sub_widgets/other_plan.dart';
import 'package:soft/reg_sub_widgets/plan_details.dart';

class RegSub extends StatelessWidget {
  const RegSub({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn6(username: username),
            SizedBox(
              height: 20,
            ),
            customText(
                text: 'Your Current Plan',
                color: Color(0xFF1B3B6F),
                size: 28,
                weight: FontWeight.bold),
            SizedBox(
              height: 15,
            ),
            PlanDetails2(),
            SizedBox(
              height: 15,
            ),
            OtherPlan(
              username: username,
            ),
          ],
        ),
      ),
    );
  }
}
