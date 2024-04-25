import 'package:flutter/material.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/profile_page_widgets/delete_account_dialog.dart';
import 'package:soft/profile_page_widgets/item_cont.dart';
import 'package:soft/profile_page_widgets/user_icon.dart';
import 'package:soft/screens/event_list_page.dart';
import 'package:soft/screens/home_page.dart';
import 'package:soft/screens/login.dart';
import 'package:soft/profile_page_widgets/alert_dialog.dart';
import 'package:soft/screens/subscription_page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key, required this.userData});
  final String userData;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    String username = widget.userData;
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  text: 'Profile',
                  color: Color(0xFF1B3B6F),
                  size: 35,
                  weight: FontWeight.bold),
              SizedBox(
                height: 25,
              ),
              userIcon(username: username),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubscriptionPage(
                        username: username,
                      ),
                    ),
                  );
                },
                child: itemCont(
                  text: 'Subscription',
                  image: 'assets/subscription.png',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              itemCont(
                text: 'Settings',
                image: 'assets/setting.png',
              ),
              SizedBox(
                height: 15,
              ),
              itemCont(
                text: 'About Us',
                image: 'assets/aboutUs.png',
              ),
              SizedBox(
                height: 15,
              ),
              itemCont(
                text: 'Customer Support',
                image: 'assets/custSupp.png',
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  // _showChangePasswordDialog(context, username);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ChangePasswordDialog(username: username);
                      });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.password,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      customText(
                          text: 'Change Password',
                          color: Colors.black,
                          size: 15,
                          weight: FontWeight.bold),
                      Spacer(),
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/arrow.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  // _showChangePasswordDialog(context, username);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DeleteAccountDialog(username: username);
                      });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.password,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      customText(
                          text: 'Delete Account',
                          color: Colors.black,
                          size: 15,
                          weight: FontWeight.bold),
                      Spacer(),
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/arrow.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
                    ),
                  );
                },
                child: itemCont(
                  text: 'Log Out',
                  image: 'assets/logout.png',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(userData: username)),
                );
              },
              child: Container(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/Home.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventListPage(userData: username)),
                );
              },
              child: Image.asset(
                'assets/3Lines.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Event List',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Clock.png',
              width: 20,
              height: 20,
            ),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigate to the ProfilePage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(userData: username)),
                );
              },
              child: Image.asset(
                'assets/Profile.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// class ProfilePage extends StatelessWidget {
//   ProfilePage({super.key, required this.username});
//   final String username;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFECF0F3),
//       resizeToAvoidBottomInset: false,
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             customText(
//                 text: 'Profile',
//                 color: Color(0xFF1B3B6F),
//                 size: 35,
//                 weight: FontWeight.bold),
//             SizedBox(
//               height: 25,
//             ),
//             userIcon(username: username),
//             SizedBox(
//               height: 25,
//             ),
//             itemCont(
//               text: 'Subscription',
//               image: 'assets/subscription.png',
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             itemCont(
//               text: 'Settings',
//               image: 'assets/setting.png',
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             itemCont(
//               text: 'About Us',
//               image: 'assets/aboutUs.png',
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             itemCont(
//               text: 'Customer Support',
//               image: 'assets/custSupp.png',
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             GestureDetector(
//               onTap: () {
//                 _showChangePasswordDialog(context, username);
//               },
//               child: Container(
//                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 width: 370,
//                 height: 50,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 30,
//                       height: 30,
//                       // decoration: BoxDecoration(color: Colors.black),
//                       child: Icon(
//                         Icons.password,
//                         color: Colors.blue,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     customText(
//                         text: 'Change Password',
//                         color: Colors.black,
//                         size: 15,
//                         weight: FontWeight.bold),
//                     Spacer(),
//                     Container(
//                       width: 30,
//                       height: 30,
//                       child: Image.asset('assets/arrow.png'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => LogIn(),
//                   ),
//                 );
//               },
//               child: itemCont(
//                 text: 'Log Out',
//                 image: 'assets/logout.png',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

