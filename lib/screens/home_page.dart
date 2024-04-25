import 'package:flutter/material.dart';
import 'package:soft/home_page_widgets/floating_act_btn.dart';
import 'package:soft/home_page_widgets/user_greeting_cont.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/event_list_page.dart';
import 'package:soft/screens/user_profile_page.dart';
// import 'package:soft/screens/login.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.userData});
  final String userData;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    String data = widget.userData;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            userGreetingCont(
              screenWidth: screenWidth,
              username: data,
            ),
            SizedBox(
              height: 160,
            ),
            customText(
                text: 'No Event',
                color: Color.fromARGB(255, 192, 184, 184),
                size: 45,
                weight: FontWeight.bold),
            customText(
                text: 'Started Yet',
                color: Color.fromARGB(255, 192, 184, 184),
                size: 45,
                weight: FontWeight.bold),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: floatingActBtn(username: data),
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
                      builder: (context) => HomePage(userData: data)),
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
                      builder: (context) => EventListPage(userData: data)),
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
                      builder: (context) => ProfilePage(userData: data)),
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
