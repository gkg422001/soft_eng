import 'package:flutter/material.dart';

class DogBG extends StatelessWidget {
  const DogBG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 320,
      decoration: BoxDecoration(
        color: Color(0xFF1B3B6F),
      ),
      child: Image.asset(
        'assets/Dog BG.png',
      ),
    );
  }
}
