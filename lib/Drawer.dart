import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF2821b5),
              ),
              child: Center(
                  child: Text(
                "DevsEra",
                style: TextStyle(color: Colors.white, fontSize: 50),
              )),
            ),
            ListTile(
              minLeadingWidth: 25,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              title: Text("Home"),
              leading: FaIcon(
                FontAwesomeIcons.home,
                color: Colors.black87,
                size: 18,
              ),
            ),
            ListTile(
              minLeadingWidth: 25,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Internships');
              },
              title: Text("Internships"),
              leading: FaIcon(
                FontAwesomeIcons.suitcase,
                color: Colors.black87,
                size: 18,
              ),
            ),
            ListTile(
              minLeadingWidth: 25,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Training');
              },
              title: Text("Trainings"),
              leading: FaIcon(
                FontAwesomeIcons.code,
                color: Colors.black87,
                size: 18,
              ),
            ),
            ListTile(
              minLeadingWidth: 25,
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Coming Soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xff2821b5),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              title: Text("Contact Us"),
              leading: FaIcon(
                FontAwesomeIcons.mailBulk,
                color: Colors.black87,
                size: 18,
              ),
            ),
            Spacer(),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Coming Soon",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xff2821b5),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              title: Text("Report a Complaint"),
              minLeadingWidth: 25,
              leading: FaIcon(
                FontAwesomeIcons.heartBroken,
                color: Colors.black87,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
