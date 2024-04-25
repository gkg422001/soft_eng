import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/signup_widgets/bottom_sheet.dart';

class customCont extends StatelessWidget {
  const customCont(
      {super.key,
      required this.header,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.image,
      required this.top});
  final String header, text1, text2, text3, image;
  final double top;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: top,
      right: 60,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return bottomSheet(screenWidth: screenWidth);
            },
          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          width: 290,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                child: Image.asset(image),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: header,
                    color: Color(0xFF1B3B6F),
                    size: 12,
                    weight: FontWeight.bold,
                  ),
                  customText(
                    text: text1,
                    color: Color(0xFF1B3B6F),
                    size: 11,
                    weight: FontWeight.w400,
                  ),
                  customText(
                    text: text2,
                    color: Color(0xFF1B3B6F),
                    size: 11,
                    weight: FontWeight.w400,
                  ),
                  customText(
                    text: text3,
                    color: Color(0xFF1B3B6F),
                    size: 11,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
