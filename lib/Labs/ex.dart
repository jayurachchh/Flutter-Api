import 'package:flutter/material.dart';

class Ex extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Column(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child:Row(
            children: [
              Expanded(child:Container(color: Colors.green,)),
              Expanded(child: Column(children: [
                Expanded(child: Container(color: Colors.yellow)),
                Expanded(child: Container(color: Colors.cyanAccent))
              ],))

            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(color: Colors.lightBlue,)),
              Expanded(child: Container(color: Colors.purple,)),
              Expanded(child: Container(color: Colors.orange,))
            ],
          ))
        ],
      )
    );
  }

}