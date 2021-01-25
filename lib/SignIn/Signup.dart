import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FocusNode nameFocusNode = new FocusNode();
  FocusNode mailFocusNode = new FocusNode();
  FocusNode passFocusNode = new FocusNode();
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
                  onPressed: () {},
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
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Create New Account',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),
              new TextField(
                focusNode: nameFocusNode,
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF2821B5),
                      ),
                    ),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Enter your Name',
                    labelText: 'Full Name (Required)',
                    labelStyle: TextStyle(
                        color:
                            nameFocusNode.hasFocus ? Colors.red : Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              new TextField(
                focusNode: mailFocusNode,
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF2821B5),
                      ),
                    ),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Enter your E-mail',
                    labelText: 'E-mail (Required)',
                    labelStyle: TextStyle(
                        color:
                            mailFocusNode.hasFocus ? Colors.red : Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              new TextField(
                focusNode: passFocusNode,
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF2821B5),
                      ),
                    ),
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Enter a Password',
                    labelText: 'Password (Required)',
                    labelStyle: TextStyle(
                        color:
                            passFocusNode.hasFocus ? Colors.red : Colors.grey)),
              ),
              SizedBox(
                height: 20,
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
                        'Create New Account',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Expanded( 
                  child: Container(
                    child: Divider(thickness: 1.5,)),
                ), Text("  or  ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ), Expanded(
                    child: Container(
                        child: Divider(
                      thickness: 1.5,
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
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
                        'Login',
                        style: TextStyle(
                          color: Color(0xFF2821B5),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "By creating an account, you accept Devsera's Terms of\nservice and Privaciy ",
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
