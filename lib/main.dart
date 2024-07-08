import 'package:first/Database/Database1.dart';
import 'package:first/Labs/Lab7P1.dart';
import 'package:first/Labs/Lab7P3.dart';
import 'package:first/Labs/Lab7P4.dart';
import 'package:first/Labs/Lab7P5.dart';
import 'package:first/Labs/birth.dart';
import 'package:first/Labs/bottom_navi.dart';
import 'package:first/Labs/demo.dart';
import 'package:first/Design/design_1.dart';
import 'package:first/Design/design_2.dart';
import 'package:first/Design/design_3.dart';
import 'package:first/Design/design_4.dart';
import 'package:first/Labs/dice_demo.dart';
import 'package:first/Labs/ex.dart';
import 'package:first/Labs/ex1.dart';
import 'package:first/Labs/ex2.dart';
import 'package:first/Metro/index.dart';
import 'package:first/Labs/lab8.dart';
import 'package:first/Labs/lab9.dart';
import 'package:first/Labs/lab9P3.dart';
import 'package:first/Metro/login.dart';
import 'package:first/Metro/prelogin.dart';
import 'package:first/Metro/signup.dart';
import 'package:first/Operation/Op1.dart';
import 'package:first/Operation/u.dart';
import 'package:first/Operation/userlist.dart';
import 'package:flutter/material.dart';
import 'Api/api_demo.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Database1().copyPasteAssetFileToRoot();
    return MaterialApp(
      title: 'First',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
       ),
      home:Operation1()
     // initialRoute: '/',
    //   routes: {
    //     '/':(context) => Prelogin(),
    //     '/Login':(context)=>Login(),
    //     '/Signup':(context) => Signup()
    //   },
    );
  }
}
