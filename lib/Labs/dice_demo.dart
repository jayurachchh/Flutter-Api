import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();

}
class _DiceState extends State<Dice> {
  int a=Random().nextInt(5) + 1;
  int b=Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: InkWell(onTap: () {
               getdice();
              },
                  child: Container(margin: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage("assets/images/dice$a.png"),)))),
              Expanded(child: InkWell(onTap: () {
               getdice();
              },
                  child: Container(margin: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage("assets/images/dice$b.png"),))))
            ],),
        )
    );

  }
  void getdice()
  {
    setState((){
      a = Random().nextInt(5) + 1;
      b = Random().nextInt(5) + 1;
    });
  }
}