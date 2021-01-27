import 'package:devsera/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrainingDetails extends StatelessWidget {
  String trainingtitle;
  String subtitle;
  String box1;
  String box2;
  String box3;
  String box4;
  String h1;
  String img;
  String sh1;
  String p1;
  String sh2;
  String p2;
  String sh3;
  String p3;
  String url;

  TrainingDetails(
      {this.box1,
      this.box2,
      this.box3,
      this.box4,
      this.h1,
      this.img,
      this.p1,
      this.p2,
      this.p3,
      this.sh1,
      this.sh2,
      this.sh3,
      this.subtitle,
      this.trainingtitle,
      this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF397e85),
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          const Color(0xFF397e85),
                          const Color(0xFF2ba598),
                          Theme.of(context).scaffoldBackgroundColor,
                        ],
                        stops: [
                          0.0,
                          0.7,
                          1.0,
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.clamp),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "Certified Online Training",
                          style: TextStyle(
                              color: Colors.teal[600],
                              fontWeight: FontWeight.w900,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        trainingtitle,
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                            color: Color(0xfffffefe)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                            color: Color(0xfffffefe),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 2),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff3bb4a3)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.calendar,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  box1,
                                  style: TextStyle(
                                      color: Color(0xfffffefe),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.earlybirds,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  box2,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.paperclip,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  box3,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  box4,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(h1,
                          style: TextStyle(
                              //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset(
                                img,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(sh1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(p1,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[700])),
                              SizedBox(
                                height: 20,
                              ),
                              Text(sh2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(p2,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[700])),
                              SizedBox(
                                height: 20,
                              ),
                              Text(sh3,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(p3,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[700])),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Industry recognized certificate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "100,000+ companies use Internshala for hiring every year. So a certificate from Internshala is recognized everywhere."),
                                SizedBox(
                                  height: 20,
                                ),
                              ])),
                      SizedBox(
                        height: 40,
                      ),
                      Text("How will your training work?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25)),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.home,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Learn from Home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Stay safe indoors",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidQuestionCircle,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Test yourself",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Test knowledge through quizzes.",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.codiepie,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hands-on practice",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Work on assignments and projects.",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.sms,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Doubt clearing",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Through Q&A forum",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.fileSignature,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Beginner friendly",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("No prior knowledge required.",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.certificate,
                                  size: 40,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Get certified",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        "Get certified upon successful\ncompletion of training.",
                                        style:
                                            TextStyle(color: Colors.grey[800]))
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
