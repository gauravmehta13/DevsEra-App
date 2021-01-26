import 'package:devsera/HomePage.dart';
import 'package:devsera/OnboardingScreen.dart';
import 'package:devsera/SignIn/Login.dart';
import 'package:devsera/SignIn/Signup.dart';
import 'package:devsera/Trainings/Training.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Internships/Internships.dart';
import 'OnboardingScreen.dart';

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
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(brightness: Brightness.dark),
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme,
          ),
          primaryColor: Color(0xFF2821b5)),
      initialRoute: '/Onboarding',
      routes: {
        '/': (context) => HomePage(),
        '/Internships': (context) => Internships(),
        '/Training': (context) => Training(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup(),
        '/Onboarding': (context) => OnboardingPage(),
      },
    );
  }
}
