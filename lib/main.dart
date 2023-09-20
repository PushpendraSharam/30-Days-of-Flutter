import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.lato().fontFamily),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {"/": (context) => Home_page(), "/login": (context) => Login()},
    );
  }
}
