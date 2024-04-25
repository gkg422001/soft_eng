import 'package:flutter/material.dart';
import 'package:soft/home_with_event_widgets/example_event.dart';
import 'package:soft/home_with_event_widgets/floating_act_btn.dart';
import 'package:soft/home_with_event_widgets/infoTxtField.dart';
import 'package:soft/home_with_event_widgets/toggle_btn.dart';
import 'package:soft/home_with_event_widgets/upload_btns.dart';
import 'package:soft/screens/event_list_page.dart';
import 'package:soft/screens/home_page.dart';
import 'package:soft/screens/user_profile_page.dart';
// import 'package:soft/login_widgets/custom_text.dart';

class HomeWithEvent extends StatefulWidget {
  HomeWithEvent({super.key, required this.userData});
  final String userData;
  @override
  _HomeWithEventState createState() => _HomeWithEventState();
}

class _HomeWithEventState extends State<HomeWithEvent> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    String username = widget.userData;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            exampleEvent(),
            SizedBox(
              height: 20,
            ),
            toggleBtn(
              username: username,
            ),
            SizedBox(
              height: 35,
            ),
            infoTxtField(),
            SizedBox(
              height: 35,
            ),
            UploadButtons(),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: button(
        username: username,
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
