 import 'package:flutter/material.dart';
class P4 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.lightBlue))
              ],


            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.brown)),
                Expanded(child: Container(color: Colors.lightBlueAccent)),
                Expanded(child: Container(color: Colors.purpleAccent))
              ],


            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.black)),
                Expanded(child: Container(color: Colors.redAccent)),
                Expanded(child: Container(color: Colors.orange))
              ],


            ),
          )
        ],
      ),
    );
  }
}