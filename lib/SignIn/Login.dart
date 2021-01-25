import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                alignment: Alignment(-1.1,0),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up Later',
                    style: TextStyle( color: Color(0xFF2821B5),),
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                onPressed: () {},
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
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
