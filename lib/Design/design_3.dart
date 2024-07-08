import 'package:first/Design/design_1.dart';
import 'package:first/Design/design_2.dart';
import 'package:first/Design/design_4.dart';
import 'package:flutter/material.dart';

class Design_3 extends StatefulWidget {
  const Design_3({Key? key}) : super(key: key);

  @override
  State<Design_3> createState() => _Design_3State();
}

class _Design_3State extends State<Design_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffffffff),
      centerTitle:true,
      title: Text("Add New Card",
          textAlign: TextAlign.center,
          style:
          TextStyle(fontWeight: FontWeight.bold, color: Color(0xff334f69),fontSize: 25)),
      leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back,color:  Color(0xff334f69))),
    ),body: Column(children: [
      Container(
        margin: EdgeInsets.only(top: 20,right: 15,left: 15),
        height: 200,
        child: Card(

          color: Color(0xff710f93),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff710f93), //<-- SEE HERE
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            child: Expanded(child:Column(children: [
              Container(
              margin: EdgeInsets.only(top:20,right: 280),
                height: 30,
                child: Expanded(child:
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xffffffff), //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Image.asset('assets/images/chip.png'))),
              ),
              Expanded(child: Container(
                margin: EdgeInsets.only(top: 15,right: 150),
                child: Text("******** 3947",style:
                TextStyle(color:Color(0xffffffff),fontSize: 27
                ),),
              ),
              ),
              Expanded(child: Container(
                margin: EdgeInsets.only(left:25,top: 30),
                child: Row(children:
                [
                  Expanded(child: Text("Card Holder Name",style:
                  TextStyle(color: Color(0xffffffff)
                  )
                    ,)),
                  Container(
                    margin: EdgeInsets.only(right: 110),
                    child: Expanded(child: Text("Expiry Date",style:
                    TextStyle(color: Color(0xffffffff),
                    ),)),
                  ),
                ],),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.only(left:25,bottom: 20),
                child: Row(children:
                [
                  Expanded(child: Text("Safayet Ahmed",style:
                  TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),)),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Expanded(child: Text("05/23",style:
                    TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),)),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(left: 40),
                      height:40,
                      width: 40,
                      child: Image.asset('assets/images/m.png'),
                  )
                  ),
                ],),
              )),
       ],)),
          ),
        )),
      Container(
        margin: EdgeInsets.only(left:8,top: 20,right: 225),
        child:
        Expanded(child: Container
          (child: Text("Card Number",style:
        TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
            color: Color(0xff334f69)),),
        )),
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Card(
                  color: Color(0xffedf5ff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xffedf5ff), //<-- SEE HERE
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: 50,
                    width: 330,
                    margin: EdgeInsets.only(right: 15,left: 5),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            Container(
                              height:45,
                              width: 45,
                              child: Card(
                                color: Color(0xFFffffff),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xfff6faff), //<-- SEE HERE
                                  ),
                                  //borderRadius: BorderRadius.circular(10.0),
                                ),

                                child: Image(image: AssetImage
                                  ('assets/images/visa.jpg')),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("5282 3456 1367 3947",style:
                              TextStyle(fontSize: 18,color: Color(0xff0c5298),
                                  fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ),
                  )
              ),
            ),
          ],)),
      ),
      Container(
        margin: EdgeInsets.only(left:10,top: 20,right: 225),
        child:
        Expanded(child: Container
          (
          child: Text("Name on Card",style:
        TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
            color: Color(0xff334f69)),),

        )),
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Card(
                  color: Color(0xffedf5ff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xffedf5ff), //<-- SEE HERE
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: 50,
                    width: 330,
                    margin: EdgeInsets.only(right: 15,left: 5),
                    child: Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top:14,left: 10),
                          child: Text("Safayet Ahmed",style:
                          TextStyle(fontSize: 18,color: Color(0xff0c5298),
                              fontWeight: FontWeight.bold),
                          ),
                        ),
                    ),
                  )
              ),
            ),
          ],)),
      ),
      Expanded(child: Container(
        margin: EdgeInsets.only(left: 20,),
        child: Row(children: [
          Expanded(child:
          Text("Expiry Date",style:
          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Color(0xff334f69)),),),
            Expanded(child:
            Text("CVV",style:
            TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                color: Color(0xff334f69)),),),
        ],),
      )),
      Container(
        margin: EdgeInsets.only(),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,),
              child: Card(
                color: Color(0xffedf5ff),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xffedf5ff), //<-- SEE HERE
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                    height: 55,
                    width: 130,
                    margin: EdgeInsets.only(right: 20,left: 15),
                    child: Expanded(child: Container(
                      margin: EdgeInsets.only(top: 18),
                      child: Text("05/23",style:
                      TextStyle(fontSize: 15,color: Color(0xff0c5298),
                          fontWeight: FontWeight.bold),),
                    ))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,),
              child: Card(
                color: Color(0xffedf5ff),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xffedf5ff), //<-- SEE HERE
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                    height: 55,
                    width: 130,
                    margin: EdgeInsets.only(right: 15,left: 15),
                    child: Expanded(child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("235",style:
                      TextStyle(fontSize: 15,color: Color(0xff334f69),
                          fontWeight: FontWeight.bold),),
                    ))),
              ),
            ),
          ],)),
      ),
      Expanded(child: Row(children: [
        Container(
          //margin: EdgeInsets.only(top: 10),
          child: Expanded(child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(),
                child: Expanded(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20,),
                          child: Icon(Icons.domain_verification,
                            color: Color(0xff6de086),size: 25,)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text("Remember this card details.",style:
                        TextStyle(fontSize: 18,color: Color(0xff0c5298),
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],)),
        ),
      ],)),
      Container(
        margin: EdgeInsets.only(top: 1),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,bottom: 40),
              child: InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Design_4();
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

                          child: InkWell(onTap: () {

                          },
                            child: Row(
                              children: [
                                Text("Save Card",style:
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
            ),

          ],)),
      ),
    ],),);
  }
}
