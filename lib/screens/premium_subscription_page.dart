import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/premium_sub_widgets/back_btn.dart';
import 'package:soft/premium_sub_widgets/plan_details.dart';

class PremiumSub extends StatelessWidget {
  const PremiumSub({super.key, required this.username});
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
            backBtn7(username: username),
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
            PlanDetails3(),
          ],
        ),
      ),
    );
  }
}
