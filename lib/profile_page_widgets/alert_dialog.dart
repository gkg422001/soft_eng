import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/profile_page_widgets/custom_txt_field.dart';
import 'package:soft/user_info.dart';
import 'package:soft/user_service.dart';

class ChangePasswordDialog extends StatelessWidget {
  ChangePasswordDialog({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final UserService _userService = UserService();
    UserInfo currentUser = UserInfo('', '', '');
    return AlertDialog(
      scrollable: true,
      title: Text('Change Password'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              text: 'Old Password:',
              color: Colors.black,
              size: 15,
              weight: FontWeight.w400),
          SizedBox(
            height: 10,
          ),
          custTxtField(
            text: 'Old Password',
            controller: oldPasswordController,
          ),
          SizedBox(
            height: 15,
          ),
          customText(
              text: 'New Password:',
              color: Colors.black,
              size: 15,
              weight: FontWeight.w400),
          SizedBox(
            height: 10,
          ),
          custTxtField(
            text: 'New Password',
            controller: newPasswordController,
          ),
          SizedBox(
            height: 15,
          ),
          customText(
              text: 'Confirm Password:',
              color: Colors.black,
              size: 15,
              weight: FontWeight.w400),
          SizedBox(
            height: 10,
          ),
          custTxtField(
            text: 'Confirm Password',
            controller: confirmPasswordController,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            List<UserInfo> users = await _userService.getUsers();
            for (var user in users) {
              if (username == user.username) {
                currentUser.username = user.username;
                currentUser.password = confirmPasswordController.text;
                currentUser.email = user.email;
                break;
              }
            }
            await _userService.updateUser(username, currentUser);
            Navigator.of(context).pop();
          },
          child: Center(
            child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xFF1B3B6F),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: customText(
                        text: 'Submit',
                        color: Colors.white,
                        size: 15,
                        weight: FontWeight.bold))),
          ),
        ),
      ],
    );
  }
}
