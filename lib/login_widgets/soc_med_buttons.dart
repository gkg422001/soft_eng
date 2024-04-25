import 'package:flutter/material.dart';

class soc_med_buttons extends StatelessWidget {
  const soc_med_buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 620,
      left: 90,
      child: Container(
        height: 40,
        width: 230,
        decoration: BoxDecoration(
          color: Color(0xFF1B3B6F),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/FacebookIcon.png'),
            Image.asset('assets/GoogleIcon.png'),
            Image.asset('assets/EmailIcon.png'),
          ],
        ),
      ),
    );
  }
}
