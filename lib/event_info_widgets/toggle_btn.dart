import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/event_info_page.dart';
import 'package:soft/screens/event_notes_page.dart';

class toggleBtn3 extends StatelessWidget {
  const toggleBtn3({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventInfoPage(
                    username: username,
                  ),
                ),
              );
            },
            child: Container(
              width: 190,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFF1F7494),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: customText(
                    text: 'Summary',
                    color: Colors.white,
                    size: 15,
                    weight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventNotesPage(
                    username: username,
                  ),
                ),
              );
            },
            child: Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: customText(
                    text: 'Notes',
                    color: Color(0xFFBDC0C2),
                    size: 15,
                    weight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
