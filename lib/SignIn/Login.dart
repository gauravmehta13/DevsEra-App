import 'package:devsera/HomePage.dart';
import 'package:devsera/SignIn/Signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 0), () {});
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<User> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    final UserCredential authResult =
        await _auth.signInWithCredential(credential);
    final User user = authResult.user;

    print('User Name : ${user.displayName}');
    return user;
  }

  void _signOut() {
    googleSignIn.signOut();
    print('User Signed Out');
  }

  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(-1.1, 0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  child: Text(
                    'Sign Up Later',
                    style: TextStyle(
                      color: Color(0xFF2821B5),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'DevsEra',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF2821B5),
                    fontSize: 50,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Learn and Develop your skills with Live Projects\nand get Certified',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                  height: 50,
                  onPressed: () {
                    _signIn()
                        .then((value) => (User user) => print(user))
                        .catchError((e) => print(e));
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png', scale: 2.5),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Continue With Google',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  height: 50,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Coming Soon",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Color(0xff2821b5),
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xff3b5998),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        scale: 2.5,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Continue With Facebook',
                        style: TextStyle(
                          color: Color(0xff3b5998),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  color: Color(0xFF2821B5),
                  height: 50,
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Coming Soon",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Color(0xff2821b5),
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xFF2821B5),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login with Email',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => Signup()),
                  );
                },
                child: Text(
                  'New to DevsEra? Create Account',
                  style: TextStyle(
                    color: Color(0xFF2821B5),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "By creating an account, you accept Devsera's Terms of\nservice and Privaciy ",
                textAlign: TextAlign.center,
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
