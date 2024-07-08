import 'package:flutter/material.dart';

class Birth extends StatelessWidget {
    var Name,dis,invi,add;
    Birth(this.Name,this.dis,this.invi,this.add);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('images/birthday.jpg'),
            Container
              (
              margin: EdgeInsets.only(top:150),
                child: Text("Happy birthday  \n $Name",textAlign:TextAlign.center,style: TextStyle(color: Colors.cyanAccent,fontSize: 50,fontWeight: FontWeight.bold),)),
                  Container(
                      margin: EdgeInsets.only(top:270),
                      child: Text("$dis",textAlign:TextAlign.center,style: TextStyle(color: Colors.teal,fontSize: 30,fontWeight: FontWeight.bold),)),
            Container(
                margin: EdgeInsets.only(top:430),
                child: Text("Invited by",textAlign:TextAlign.center,style:
                TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),)),
            Container(
                margin: EdgeInsets.only(top:460),
                child: Text("$invi",textAlign:TextAlign.center,style:
                TextStyle(color: Colors.limeAccent,fontSize: 30,fontWeight: FontWeight.bold),)),
            Container(
                margin: EdgeInsets.only(top:530),
                child: Text("Address",textAlign:TextAlign.center,style:
                TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),)),
            Container(
                margin: EdgeInsets.only(top:570),
                child: Text("$add",textAlign:TextAlign.center,style:
                TextStyle(color: Colors.limeAccent,fontSize: 30,fontWeight: FontWeight.bold),)),
          ],
        ))
      ],),
    );
  }
}
