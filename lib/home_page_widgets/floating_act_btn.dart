import 'package:flutter/material.dart';
import 'package:soft/screens/start_event.dart';

class floatingActBtn extends StatelessWidget {
  const floatingActBtn({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 585,
          right: 170,
          child: FloatingActionButton(
            shape: CircleBorder(),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => StartEventPage(
                    username: username,
                  ),
                ),
              );
            },
            foregroundColor: Colors.white,
            backgroundColor: Color(0xFF009340),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}
