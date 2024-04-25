import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soft/screens/login.dart';
import 'package:soft/user_info.dart';
import 'package:soft/user_service.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserInfoAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsHound App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: _userService.getUsers(),
        builder:
            (BuildContext context, AsyncSnapshot<List<UserInfo>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return LogIn();
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      // LogIn(),
    );
  }
}
