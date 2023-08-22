/// This application is a task manager application that checks whether the user is doing their tasks or not.
/// It includes three pages, login, setting, and main pages.
/// Login Screen is where the user logs in to the system and it navigates to settings and main pages.
/// Setting Screen consists of the server address text field and an chekbox for auto launch at startup.
/// Main Screen is the page the user can see their tasks.

import 'package:flutter/material.dart';
import 'package:worknproject/screens/login_screen.dart';
import 'package:worknproject/screens/main_screen.dart';
import 'package:worknproject/screens/setting_screen.dart';

void main() async {
  runApp(const WorkNProjectApp());
}

class WorkNProjectApp extends StatefulWidget {
  const WorkNProjectApp({super.key});

  @override
  State<WorkNProjectApp> createState() => _WorkNProjectState();
}

class _WorkNProjectState extends State<WorkNProjectApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: <String, WidgetBuilder>{
        // Route names
        '/main_screen': (BuildContext context) => const MainScreen(),
        '/login_screen': (BuildContext context) => const LoginScreen(),
        '/setting_screen': (BuildContext context) => const SettingScreen(),
      },
    );
  }
}
