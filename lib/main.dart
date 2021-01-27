import 'package:devsera/HomePage.dart';
import 'package:devsera/OnboardingScreen.dart';
import 'package:devsera/SignIn/Login.dart';
import 'package:devsera/SignIn/Signup.dart';
import 'package:devsera/Trainings/Training.dart';
import 'package:devsera/Trainings/TrainingDetails.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Internships/Internships.dart';
import 'OnboardingScreen.dart';

int initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen ${initScreen}');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      initialRoute:
          initScreen == 0 || initScreen == null ? "/Onboarding" : "/",
      routes: {
        '/': (context) => HomePage(),
        '/Internships': (context) => Internships(),
        '/Training': (context) => Training(),
        '/Login': (context) => Login(),
        '/Signup': (context) => Signup(),
        '/Onboarding': (context) => OnboardingPage(),
        '/Trainingdetails': (context) => TrainingDetails()
      },
    );
  }
}
