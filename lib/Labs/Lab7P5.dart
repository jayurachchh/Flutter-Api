import 'package:flutter/material.dart';
class P5 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.red),flex: 3,),
                Expanded(child: Container(color: Colors.green),flex: 3,),
                Expanded(child: Container(color: Colors.lightBlue),flex: 4,)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.brown),flex: 4,),
                Expanded(child: Container(color: Colors.lightBlueAccent),flex: 3,),
                Expanded(child: Container(color: Colors.purpleAccent),flex: 2)
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container(color: Colors.black),flex: 1,),
                Expanded(child: Container(color: Colors.redAccent),flex: 4,),
                Expanded(child: Container(color: Colors.orange),flex: 3,)
              ],
            ),
          )
        ],
      ),
    );
  }
}