import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';

class PlanDetails3 extends StatelessWidget {
  const PlanDetails3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 360,
      height: 340,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(color: Colors.white),
            child: Image.asset('assets/blueCheck.png'),
          ),
          customText(
              text: 'Free Plan',
              color: Color(0xFF1F7494),
              size: 25,
              weight: FontWeight.bold),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset('assets/darkBlueCheck.png')),
              SizedBox(
                width: 10,
              ),
              customText(
                  text: 'Automates Summarization',
                  color: Colors.black,
                  size: 15,
                  weight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset('assets/darkBlueCheck.png')),
              SizedBox(
                width: 10,
              ),
              customText(
                  text: 'Audio Transcription',
                  color: Colors.black,
                  size: 15,
                  weight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset('assets/darkBlueCheck.png')),
              SizedBox(
                width: 10,
              ),
              customText(
                  text: 'Event-specific Organization',
                  color: Colors.black,
                  size: 15,
                  weight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset('assets/darkBlueCheck.png')),
              SizedBox(
                width: 10,
              ),
              customText(
                  text: 'Multimedia-Handling',
                  color: Colors.black,
                  size: 15,
                  weight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset('assets/darkBlueCheck.png')),
              SizedBox(
                width: 10,
              ),
              customText(
                  text: 'Unli Storage',
                  color: Colors.black,
                  size: 15,
                  weight: FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }
}
