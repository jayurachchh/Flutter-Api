import 'package:first/Labs/ex.dart';
import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Column(
        children: [
          Expanded(child:Row(
            children: [
              Expanded(child: Container(color: Colors.cyan,)),
              Expanded(child: Container(color: Colors.purple,)),
              Expanded(child: Container(color: Colors.cyanAccent,)),
              Expanded(child: Container(color: Colors.redAccent,))
            ],
          )),

          Expanded(child: Row(children: [
            Expanded(child: Container(color: Colors.yellow,)),

            Expanded (child:Column(children:
  [
              Expanded(child:Row(children: [
                Expanded(child:Container(color: Colors.green,)),
                Expanded(child: Container(color: Colors.redAccent,))
  ],)),
             Expanded(child:Row(children:
            [
                  Expanded(child:Container(color: Colors.greenAccent,)),
                  Expanded(child: Container(color: Colors.limeAccent,))
    ],)),
     ],)),
            Expanded(child: Container(color: Colors.brown))
          ],)),
          // jayu Rachchh
           Expanded(child: Row(children: [
             Expanded(child:Column(children: [
               Expanded(child: Row(children: [
                 Expanded(child: Container(color: Colors.pink,)),
                 Expanded (child:Column(children:
                 [
                   Expanded(child:Row(children: [
                     Expanded(child:Container(color: Colors.green,)),
                     Expanded(child: Container(color: Colors.redAccent,))
                   ],)),
                   Expanded(child:Row(children:
                   [
                     Expanded(child:Container(color: Colors.greenAccent,)),
                     Expanded(child: Container(color: Colors.limeAccent,))
                   ],)),
                 ],)),
                 // Expanded(child: child)
               ],)),
               Expanded(child: Container(color: Colors.indigo,))
             ],)),
             Expanded(child: Container(color: Colors.orangeAccent,)),
             Expanded (child:Column(children:
             [
               Expanded(child:Row(children: [
                 Expanded(child:Container(color: Colors.teal)),
                 Expanded(child: Container(color: Colors.yellowAccent))
               ],)),
               Expanded(child:Row(children:
               [
                 Expanded(child:Container(color: Colors.lightGreenAccent,)),
                 Expanded (child:Column(children:
                 [
                   Expanded(child:Row(children: [
                     Expanded(child:Container(color: Colors.green,)),
                     Expanded(child: Container(color: Colors.redAccent,))
                   ],)),
                   Expanded(child:Row(children:
                   [
                     Expanded(child:Container(color: Colors.greenAccent,)),
                     Expanded(child: Container(color: Colors.limeAccent,))
                   ],)),
                 ],)),
               ],)),
             ],)),
           ],))
        ],
      )
    );
  }

}
