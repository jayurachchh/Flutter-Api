import 'package:flutter/material.dart';

class index extends StatelessWidget {
  const index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(child: Text("Sucessfully login",style: TextStyle(color:Colors.cyan,fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}
