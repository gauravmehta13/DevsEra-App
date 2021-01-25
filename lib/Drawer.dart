import 'package:flutter/material.dart';
import 'HomePage.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF2821b5),
            ),
            child: Center(
                child: Text(
              "DevsEra",
              style: TextStyle(color: Colors.white, fontSize: 60),
            )),
          ),
          ListTile(
            onTap: () {
               Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
             
            },
            title: Text("Why Us?"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
               Navigator.pop(context);
               Navigator.pushNamed(context, '/Internships');
             
            },
            title: Text("Internships"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
               Navigator.pop(context);
             Navigator.pushNamed(context, '/Courses');
             
            },
            title: Text("Free Courses"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
