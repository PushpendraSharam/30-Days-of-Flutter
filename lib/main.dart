import 'package:flutter/material.dart';
import 'package:user_input/Constants/theme.dart';
import 'package:user_input/Screens/Home_Page.dart';
import 'package:user_input/Screens/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      theme: ThemeData(primarySwatch: Colors.red),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {"/": (context) => Home_page(), "/login": (context) => Login()},
    );
  }
}
