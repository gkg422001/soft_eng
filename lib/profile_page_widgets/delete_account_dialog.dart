import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/login.dart';
import 'package:soft/user_service.dart';

class DeleteAccountDialog extends StatelessWidget {
  const DeleteAccountDialog({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    final UserService _userService = UserService();
    return AlertDialog(
      scrollable: true,
      title: Text('Confirmation'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              text: 'Are you sure?',
              color: Colors.black,
              size: 25,
              weight: FontWeight.bold),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _userService.deleteUser(username);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF1B3B6F),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: customText(
                        text: 'Yes',
                        color: Colors.white,
                        size: 13,
                        weight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF1B3B6F),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: customText(
                        text: 'No',
                        color: Colors.white,
                        size: 13,
                        weight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
