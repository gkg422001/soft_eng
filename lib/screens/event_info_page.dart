import 'package:flutter/material.dart';
import 'package:soft/event_info_widgets/back_Btn.dart';
import 'package:soft/event_info_widgets/search_text_field.dart';
import 'package:soft/event_info_widgets/toggle_btn.dart';
import 'package:soft/login_widgets/custom_text.dart';

class EventInfoPage extends StatelessWidget {
  const EventInfoPage({super.key, required this.username});
  final String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(
              username: username,
            ),
            SizedBox(
              height: 15,
            ),
            customText(
                text: 'Example Event Name',
                color: Color(0xFF1B3B6F),
                size: 27,
                weight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            SearchTxtField2(),
            SizedBox(
              height: 15,
            ),
            toggleBtn3(username: username),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 360,
                  height: 550,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Hello World'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
