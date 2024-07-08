import 'package:flutter/material.dart';
class P2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body:Row(children: [
          Expanded(child: Container(color:Colors.red)),
          Expanded(child: Container(color:Colors.yellow)),
          Expanded(child: Container(color:Colors.blue)),
        ])
    );
    // return Scaffold(appBar:AppBar(),body: Row(),);
  }
}