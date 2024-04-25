import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/signup_widgets/bottom_sheet_widgets/back_Btn.dart';
import 'package:soft/start_event_wdigets/event_cont.dart';
import 'package:soft/start_event_wdigets/search_bar.dart';
import 'package:soft/start_event_wdigets/start_event_btn.dart';

class StartEventPage extends StatelessWidget {
  const StartEventPage({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(),
            SizedBox(
              height: 20,
            ),
            customText(
                text: 'Start Event',
                color: Color(0xFF1B3B6F),
                size: 30,
                weight: FontWeight.bold),
            SizedBox(
              height: 20,
            ),
            searchBar(),
            SizedBox(
              height: 25,
            ),
            eventCont(),
            Spacer(),
            startEventBtn(
              username: username,
            ),
          ],
        ),
      ),
    );
  }
}
