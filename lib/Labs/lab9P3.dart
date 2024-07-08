import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Lab9P3 extends StatelessWidget {
  const Lab9P3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Expanded(child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('images/prelogin.jpg',fit: BoxFit.cover,),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text('ABC',
              style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,fontSize: 40,),
              textAlign: TextAlign.center ,
            ),
          ),
        ],
      ))
    ],
    ),
    );
  }
}
