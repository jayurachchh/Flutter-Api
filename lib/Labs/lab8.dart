import 'package:flutter/material.dart';
class Lab8 extends StatefulWidget {
  @override
  State<Lab8> createState() => _Lab8State();
}
class _Lab8State extends State<Lab8> {
  TextEditingController txt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text("Hello world",
      style: TextStyle
        (color: Colors.cyan,fontSize: 50,fontWeight: FontWeight.bold,fontFamily: 'Schyler'),
          ),
      TextFormField(
        controller: txt,
        onChanged: (value){
          print(value);
          setState(() {
          });
        },

        obscureText:false,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          border:OutlineInputBorder(),
          hintText: "Enter the name",
          labelText: "Enter the Name "
        ),
      ),

       Text(txt.text,style: TextStyle(
         fontFamily: 'Schyler'
       ),),
    ],)
    );
    //return Scaffold(body: Text("Jay",style:TextStyle(color:Colors.green,fontSize: 100)));
  }
}