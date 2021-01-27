import 'package:devsera/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Internship Data.dart';

class Internships extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Color(0xFF2821b5)),
        
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Internships",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800]),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Free internships in nearly every tech Field"),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                    ),
                    itemBuilder: (context, index) => FlatButton(
                          onPressed: () {},
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[200]),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                              Image.asset(internshipdata[index]['img'],),
                                Spacer(),
                                Text(
                                  internshipdata[index]['title'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey[700]),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
