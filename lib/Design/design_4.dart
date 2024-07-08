import 'package:first/Design/design_1.dart';
import 'package:first/Design/design_3.dart';
import 'package:flutter/material.dart';

class Design_4 extends StatefulWidget {
  const Design_4 ({Key? key}) : super(key: key);

  @override
  State<Design_4> createState() => _Design_4State();
}

class _Design_4State extends State<Design_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffffffff),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },

          child: Icon(Icons.arrow_back,color:  Color(0xff334f69)),
        ),
      ),body: Column(children: [
      Container(margin: EdgeInsets.only(top: 280),
        child: Expanded(child: Center(
          child: Icon(Icons.verified_user_outlined,
            color: Color(0xff6de086),
          size: 150,),
        ),
        ),
      ),
      Expanded(child: Text("Verified user",style:
      TextStyle(color:Color(0xff0c5298),fontSize: 30,
          fontWeight: FontWeight.bold),)),
      Container(
        margin: EdgeInsets.only(top: 1),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,bottom: 40),
              child: InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Design_1();
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
                      margin: EdgeInsets.only(right: 15,left: 15),
                      child: Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 4,left: 100),
                          child: Row(
                            children: [
                              Text("Go Back",style:
                              TextStyle(fontSize: 22,color: Color(0xffcbd9e9),
                                  fontWeight: FontWeight.bold),
                              ),
                              Container(
                                // height: 50,
                                //   width: 50,
                                  margin: EdgeInsets.only(left: 15,),
                                  child: Icon(Icons.arrow_forward_sharp,
                                    color: Color(0xffcbd9e9),))
                            ],
                          ),
                        ),

                      ),
                    )
                ),
              ),
            ),
          ],)),
      ),
    ],),);
  }
}
