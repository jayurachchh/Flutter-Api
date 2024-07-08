import 'package:first/Design/design_2.dart';
import 'package:first/Design/design_3.dart';
import 'package:first/Design/design_4.dart';
import 'package:first/Labs/ex.dart';
import 'package:first/Metro/index.dart';
import 'package:first/Metro/login.dart';
import 'package:first/Metro/signup.dart';
import 'package:flutter/material.dart';

class Design_1 extends StatefulWidget {
  const Design_1({Key? key}) : super(key: key);

  @override
  State<Design_1> createState() => _Design_1State();
}

int i = 0;
List<Widget> wid = [
];

class _Design_1State extends State<Design_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffffffff),
        centerTitle:true,
        title: Text("Appointment",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Color(0xff334f69),fontSize: 25)),
        leading: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Design_4();
          },));
        },

            child: Icon(Icons.arrow_back,color:  Color(0xff334f69)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,top: 20),
            child: Expanded(
                child: Text(
              "Select your data",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff334f69),
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 100, top: 15),
            child: Expanded(
                child: Text(
              "< October2021 >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff334f69)),
            )),
          ),
          Expanded(
              child: Container(
                height: 120,
            margin: EdgeInsets.only(top: 15),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 1,
                      ),
                      child: Card(
                        color: Color(0xFFedf5ff),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFedf5ff), //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                            height: 120,
                            // width: 30,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Sun\n\n 12",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFedf5ff), //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Mon\n\n 13",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xff0c5298),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff0c5298), //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Tue\n\n 14",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xffb6cbe0),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFedf5ff), //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Wed\n\n 15",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Thu\n\n 16",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Fri\n\n 17",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Sat\n\n 18",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFedf5ff),
                        child: Container(
                            height: 120,
                            margin: EdgeInsets.only(right: 20, left: 20),
                            child: Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Sun\n\n 19",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff334f69),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Expanded(
                child: Container(
              child: Text(
                "Select your time",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff334f69)),
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Expanded(
                child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Card(
                    color: Color(0xff0c5298),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff0c5298), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(right: 20, left: 20),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Morning",maxLines: 1,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffb6cbe0),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 60,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Afternoon",maxLines: 1,
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 10,
                    left: 10,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Evening",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 1),
            child: Expanded(
                child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 45,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            "09:00 am",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 45,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            "09:30 am",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Card(
                    color: Color(0xff0c5298),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff0c5298), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 45,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            "10:00 am",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffb6cbe0),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 1),
            child: Expanded(
                child: Row(
              children: [
                Container(
                  //decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.white),
                  //   // borderRadius: BorderRadius.circular(50)
                  // ),
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 45,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            "10:30 am",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
                Container(
                  //decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.white),
                  //   // borderRadius: BorderRadius.circular(50)
                  // ),
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Card(
                    color: Color(0xFFedf5ff),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xfff6faff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 45,
                        width: 70,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 14),
                          child: Text(
                            "11:00 am",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff334f69),
                                fontWeight: FontWeight.bold),
                          ),
                        ))),
                  ),
                ),
              ],
            )),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
          )),

          Container(
            margin: EdgeInsets.only(top: 1),
            child: Expanded(
                child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, bottom: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return Design_2();
                        },
                      ));
                    },
                    child: Card(
                        color: Color(0xff0c5298),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff0c5298), //<-- SEE HERE
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          height: 60,
                          width: 320,
                          margin: EdgeInsets.only(right: 15, left: 15),
                          child: Expanded(
                            child: Container(
                              margin: EdgeInsets.only(top: 4, left: 100),
                              child: Row(
                                children: [
                                  Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Color(0xffcbd9e9),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      // height: 50,
                                      //   width: 50,
                                      margin: EdgeInsets.only(
                                        left: 15,
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_sharp,
                                        color: Color(0xffcbd9e9),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color(0xff0c5298)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Notification",
              backgroundColor: Color(0xff0c5298)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp),
              label: "Heart",
              backgroundColor: Color(0xff0c5298)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              label: "Profile",
              backgroundColor: Color(0xff0c5298)),
        ],
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        currentIndex: i,
        //unselectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
