import 'package:flutter/material.dart';
import 'package:soft/event_notes_widgets/back_Btn.dart';
import 'package:soft/event_notes_widgets/event_cont.dart';
import 'package:soft/event_notes_widgets/search_text_field.dart';
import 'package:soft/event_notes_widgets/toggle_btn.dart';
import 'package:soft/login_widgets/custom_text.dart';

class EventNotesPage extends StatelessWidget {
  const EventNotesPage({super.key, required this.username});
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
            backBtn3(
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
            SearchTxtField3(),
            SizedBox(
              height: 15,
            ),
            toggleBtn4(username: username),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    EventCont2(),
                    SizedBox(
                      height: 15,
                    ),
                    EventCont2(),
                    SizedBox(
                      height: 15,
                    ),
                    EventCont2(),
                    SizedBox(
                      height: 15,
                    ),
                    EventCont2(),
                    SizedBox(
                      height: 15,
                    ),
                    EventCont2(),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
