import 'package:flutter/material.dart';
class demo extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Custom(title:'green',fonsize:20,color:Colors.purple,colorback:Colors.black,fontw:FontWeight.bold,flex:3 ),
                Custom(title:'red',fonsize:20,color:Colors.green,colorback:Colors.black,fontw:FontWeight.bold,flex:4 ),
                Custom(title:'yellow',fonsize:20,color:Colors.yellow,colorback:Colors.black,fontw:FontWeight.bold ,flex:2 )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Custom(title:'green',fonsize:20,color:Colors.purple,colorback:Colors.black,fontw:FontWeight.bold,flex:3 ),
                Custom(title:'red',fonsize:20,color:Colors.green,colorback:Colors.black,fontw:FontWeight.bold,flex:4 ),
                Custom(title:'yellow',fonsize:20,color:Colors.yellow,colorback:Colors.black,fontw:FontWeight.bold ,flex:2 )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Custom(title:'green',fonsize:20,color:Colors.purple,colorback:Colors.black,fontw:FontWeight.bold,flex:3 ),
                Custom(title:'red',fonsize:20,color:Colors.green,colorback:Colors.black,fontw:FontWeight.bold,flex:4 ),
                Custom(title:'yellow',fonsize:20,color:Colors.yellow,colorback:Colors.black,fontw:FontWeight.bold ,flex:2 )
              ],
            ),
          )
        ],
      ),
    );
  }
}
Widget Custom({title,fonsize,color,colorback,size,fontw,flex})
{
  return Expanded(
    child: Container(color: color,
      child:Text(title??'',
          textAlign:TextAlign.center,
          style: TextStyle(color: colorback,
              fontSize:size??20,
              fontWeight: fontw??FontWeight.bold))),flex:flex,
  );
}