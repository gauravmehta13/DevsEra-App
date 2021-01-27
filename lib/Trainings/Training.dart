import 'package:devsera/Drawer.dart';
import 'package:devsera/Trainings/TrainingDetails.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'TrainingData.dart';

class Training extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Color(0xFF2821b5)),
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Free Trainings",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800]),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Choose the one which suits you best."),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                    ),
                    itemBuilder: (context, index) => FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TrainingDetails(
                                      trainingtitle: trainingdata[index]
                                          ['trainingtitle'],
                                      subtitle: trainingdata[index]['subtitle'],
                                      box1: trainingdata[index]['box1'],
                                      box2: trainingdata[index]['box2'],
                                      box3: trainingdata[index]['box3'],
                                      box4: trainingdata[index]['box4'],
                                      img: trainingdata[index]['img'],
                                      sh1: trainingdata[index]['sh1'],
                                      sh2: trainingdata[index]['sh2'],
                                      sh3: trainingdata[index]['sh3'],
                                      p1: trainingdata[index]['p1'],
                                      p2: trainingdata[index]['p2'],
                                      p3: trainingdata[index]['p3'],
                                      h1: trainingdata[index]['h1'],
                                    )));
                          },
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
                                SvgPicture.asset(
                                  trainingdata[index]['img'],
                                  height: 100,
                                ),
                                Spacer(),
                                Text(
                                  trainingdata[index]['title'],
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
