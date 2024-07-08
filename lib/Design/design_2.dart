import 'package:first/Design/design_3.dart';
import 'package:flutter/material.dart';

class Design_2 extends StatefulWidget
{
  const Design_2 ({Key? key}) : super(key: key);

  @override
  State<Design_2> createState() => _Design_2State();
}
int i = 0;
List<Widget> wid = [
];
class _Design_2State extends State<Design_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffffffff),
        centerTitle:true,
        title: Text("Payment",
            textAlign: TextAlign.center,
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Color(0xff334f69),fontSize: 25)),
        leading: InkWell(
          onTap: () {
          Navigator.of(context).pop();
        },

          child: Icon(Icons.arrow_back,color:  Color(0xff334f69)),
        ),
      ),
      body:Column(children: [
      Container(margin: EdgeInsets.only(right: 160,top: 20),
        child: Expanded(child:Text("Add A Payment",style:
        TextStyle(fontSize:25,fontWeight: FontWeight.bold,
            color: Color(0xff334f69),
        ),)),
      ),
      Container(margin: EdgeInsets.only(right: 30,left: 10,top: 10),
        child: Expanded(child:Text("Choose your payment method for hospital\nclinic visits",style:
        TextStyle(fontSize:15,fontWeight: FontWeight.bold,
            color: Color(0xff334f69)
        ),)),
      ),
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Card(
                color: Color(0xffedf5ff),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xff0c5298), //<-- SEE HERE
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
                                //margin: EdgeInsets.only(right: 250),
                                // height: 30,
                                // width: 40,
                                child: Container(
                                  //margin: EdgeInsets.only(right: 10),
                                  height:45,
                                  width: 50,
                                  child: Card(
                                    color: Color(0xFFffffff),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Color(0xfff6faff), //<-- SEE HERE
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                    child: Image(image: AssetImage
                                      ('assets/images/visa.jpg')),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text("**** **** **** 3947",style:
                                 TextStyle(fontSize: 18,color: Color(0xff0c5298),
                                    fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                // height: 50,
                                //   width: 50,
                                  margin: EdgeInsets.only(left: 68,),
                                  child: Icon(Icons.check_circle,
                                    color: Color(0xff0c5298),size: 22,)
                                  )
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
        margin: EdgeInsets.only(top: 15),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Card(
                  color: Color(0xffedf5ff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff0c5298), //<-- SEE HERE
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
                              //margin: EdgeInsets.only(right: 250),
                              // height: 30,
                              // width: 40,
                              child: Container(
                                //margin: EdgeInsets.only(right: 10),
                                height:45,
                                width: 50,
                                child: Card(
                                  color: Color(0xFFffffff),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xfff6faff), //<-- SEE HERE
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),

                                  child: Image(image: AssetImage
                                    ('assets/images/mcard.png')),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("**** **** **** 4057",style:
                              TextStyle(fontSize: 18,color: Color(0xff0c5298),
                                  fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              // height: 50,
                              //   width: 50,
                                margin: EdgeInsets.only(left: 68,),
                                child: Icon(Icons.check_circle_outlined,
                                  color: Color(0xffbdc5d1),size: 22,
                                  )
                            )
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
        margin: EdgeInsets.only(top: 15),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Card(
                  color: Color(0xffedf5ff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff0c5298), //<-- SEE HERE
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
                              //margin: EdgeInsets.only(right: 250),
                              // height: 30,
                              // width: 40,
                              child: Container(
                                //margin: EdgeInsets.only(right: 10),
                                height:45,
                                width: 50,
                                child: Card(
                                  color: Color(0xFFffffff),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xfff6faff), //<-- SEE HERE
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),

                                  child: Image(image: AssetImage
                                    ('assets/images/paypal.png')),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 22),
                              child: Text("Safayet Ahmed",style:
                              TextStyle(fontSize: 18,color: Color(0xff0c5298),
                                  fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              // height: 50,
                              //   width: 50,
                                margin: EdgeInsets.only(left: 100,),
                                child: Icon(Icons.check_circle_outlined,
                                  color: Color(0xffbdc5d1),size: 22,
                                )
                            )
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
        margin: EdgeInsets.only(top: 15),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Card(
                  color: Color(0xffedf5ff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff0c5298), //<-- SEE HERE
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
                              margin: EdgeInsets.only(left: 100),
                              child: Center(
                                child: Text("+  Add New Card",style:
                                TextStyle(fontSize: 18,color: Color(0xff0c5298),
                                    fontWeight: FontWeight.bold),
                                ),
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
      Expanded(child: Container(color: Colors.white,)),
      Container(
        margin: EdgeInsets.only(top: 1),
        child: Expanded(child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,bottom: 40),
              child:InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Design_3();
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
                          margin: EdgeInsets.only(top: 4,left: 90),

                            child: Center(
                              child: InkWell(onTap: () {
                              },
                                child: Row(
                                  children: [
                                    Text("Pay Now \$700",style:
                                    TextStyle(fontSize: 20,color: Color(0xffcbd9e9),
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
                          ),

                        ),
                      )
                  ),
              ),
              ),

          ],)),
      ),
    ],),
    bottomNavigationBar: BottomNavigationBar(
    items:[
    BottomNavigationBarItem(icon: Icon(Icons.home),
    label: "Home",
    backgroundColor: Color(0xff0c5298)

    ),
    BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),
    label: "Notification",
    backgroundColor: Color(0xff0c5298)

    ),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_sharp),
    label:"Heart",
    backgroundColor: Color(0xff0c5298)
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp),
    label:"Profile",
    backgroundColor:Color(0xff0c5298)
  ),
  ],
  backgroundColor:Colors.blue,
  //selectedItemColor: Colors.white,
  unselectedItemColor:Colors.white38,
  currentIndex: i,
  // unselectedItemColor: Colors.green,
      onTap: (index) {
        setState(() {
          i = index;
        });
      },
  ),);
  }
}
