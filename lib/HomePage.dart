import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'DevsEra',
          style: TextStyle(color: Color(0xff2821b5),fontWeight: FontWeight.bold, letterSpacing: 0.5,fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: new TextField(
              decoration: new InputDecoration(
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0)),
                        color: Color(0xff2821b5)),
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF2821B5),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xFF2821B5),
                    ),
                  ),
                  labelText: 'What are you looking for?',
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: CarouselSlider(
              items: [
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blue[50]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Go ahead. Get an internship!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Apply as an intern and get a chance\nto work on live projects\nif you are selected.",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[800]),
                        ),
                        Spacer(),
                        FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            child: Text(
                              "View Internships",
                              style: TextStyle(color: Color(0xFF2821B5)),
                            ))
                      ],
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blue[50]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Free Courses",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Complete Courses according to the \nguidelines and get Certified.",
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[800]),
                        ),
                        Spacer(),
                        FlatButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            child: Text(
                              "View Courses",
                              style: TextStyle(color: Color(0xFF2821B5)),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                  viewportFraction: 0.85,
                  autoPlay: true,
                  enlargeCenterPage: true),
            ),
          ),
        ],
      ),
    );
  }
}
