import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class exampleEvent extends StatelessWidget {
  const exampleEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 80,
      decoration: BoxDecoration(
          color: Color(0xFF1B3B6F), borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Row(
          children: [
            customText(
                text: 'Example Event Name',
                color: Colors.white,
                size: 20,
                weight: FontWeight.bold),
            SizedBox(
              width: 85,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
