import 'package:flutter/material.dart';
import 'package:flutter_1/pages/home_page.dart';
import 'package:flutter_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
       // primaryTextTheme: GoogleFonts.latoTextTheme().
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
