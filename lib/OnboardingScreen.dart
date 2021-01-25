import 'package:devsera/SignIn/Login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'HomePage.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => Login()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Welcome to DevsEra",
          body:
              "Internships, Guidance for personality insights, LinkedIn profile building, interviews skills. and much more",
          image: _buildImage('undraw1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Environment",
          body:
              "A unique global, multicultural & rare diverse working environment available for interns. We are located across the world and ensure successful projects.",
          image: _buildImage('undraw2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Team",
          body:
              "We are students and alumni from top colleges and experts from industry.",
          image: _buildImage('undraw3'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get Started Now",
          body:
              "An intern will start with a skill he/she is most comfortable with. The function will remain unchanged for at least three months.",
          image: _buildImage('undraw4'),
          footer: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => Login()),
              );
            },
            child: const Text(
              'Lets Go',
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xFF2821B5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        activeColor: Color(0xFF2821b5),
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
