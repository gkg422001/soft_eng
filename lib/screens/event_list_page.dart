import 'package:flutter/material.dart';
import 'package:soft/event_list_page_widgets/event_cont.dart';
import 'package:soft/event_list_page_widgets/text_field.dart';
import 'package:soft/login_widgets/custom_text.dart';
import 'package:soft/screens/event_info_page.dart';
import 'package:soft/screens/home_page.dart';
import 'package:soft/screens/user_profile_page.dart';

class EventListPage extends StatefulWidget {
  EventListPage({super.key, required this.userData});
  final String userData;
  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    String username = widget.userData;
    return Scaffold(
      backgroundColor: Color(0xFFECF0F3),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
                text: 'All Events',
                color: Color(0xFF1B3B6F),
                size: 30,
                weight: FontWeight.bold),
            SizedBox(
              height: 15,
            ),
            SearchTxtField(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventInfoPage(
                                    username: username,
                                  )),
                        );
                      },
                      child: EventCont()),
                  SizedBox(
                    height: 15,
                  ),
                  EventCont(),
                  SizedBox(
                    height: 15,
                  ),
                  EventCont(),
                  SizedBox(
                    height: 15,
                  ),
                  EventCont(),
                  SizedBox(
                    height: 15,
                  ),
                  EventCont(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ))
          ],
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
