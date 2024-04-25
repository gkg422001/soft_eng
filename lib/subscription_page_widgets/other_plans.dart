import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/premium_subscription_page.dart';
import 'package:soft/screens/regular_subscription_page.dart';

class OtherPlans extends StatelessWidget {
  const OtherPlans({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          color: Color(0xFF1B3B6F), borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          customText(
              text: 'Upgrade',
              color: Colors.white,
              size: 24,
              weight: FontWeight.bold),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => RegSub(username: username),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 140,
                  height: 145,
                  decoration: BoxDecoration(
                      color: Color(0xFF1F7494),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Color(0xFF1F7494)),
                        child: Image.asset('assets/doubleCheck.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      customText(
                          text: 'Regular',
                          color: Colors.white,
                          size: 20,
                          weight: FontWeight.bold)
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => PremiumSub(username: username),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 140,
                  height: 145,
                  decoration: BoxDecoration(
                      color: Color(0xFF1F7494),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(color: Color(0xFF1F7494)),
                        child: Image.asset('assets/tripleCheck.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      customText(
                          text: 'Premium',
                          color: Colors.white,
                          size: 20,
                          weight: FontWeight.bold)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
