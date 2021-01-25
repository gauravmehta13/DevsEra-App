import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'DevsEra',
          style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 0.5),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                    ),),
                  labelText: 'What are you looking for?',
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            child: CarouselSlider(
              items: [
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/ReCon.%20(2).png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/RVIVE.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/WA.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/API.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                )
              ],
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height - 100,
                  viewportFraction: 0.8,
                  autoPlay: true,
                  enlargeCenterPage: true),
            ),
          ),
        ],
      ),
    );
  }
}
