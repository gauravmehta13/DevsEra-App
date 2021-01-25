import 'package:devsera/HomePage.dart';
import 'package:devsera/OnboardingScreen.dart';
import 'package:devsera/SignIn/Login.dart';
import 'package:devsera/SignIn/Signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevsEra',
      theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme,
          )),
      home: OnboardingPage(),
    );
  }
}
