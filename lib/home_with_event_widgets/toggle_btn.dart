import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/home_page_with_event.dart';
import 'package:soft/screens/notes_page.dart';

class toggleBtn extends StatelessWidget {
  const toggleBtn({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeWithEvent(
                    userData: username,
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
                    text: 'Upload',
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
                  builder: (context) => NotesPage(
                    userData: username,
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
