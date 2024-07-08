import 'package:first/Metro/index.dart';
import 'package:first/Metro/login.dart';
import 'package:first/Metro/signup.dart';
import 'package:flutter/material.dart';

class Bnavi extends StatefulWidget
{
  const Bnavi({Key? key}) : super(key: key);

  @override
  State<Bnavi> createState() => _BnaviState();
}
int i=0;
List<Widget> wid=[
  // Center(child: Container(child: Text("widget 1"),)),
  // Center(child: Container(child: Text("widget 2"),)),
  // Center(child: Container(child: Text("widget 3"),)),
  index(),Login()
];
class _BnaviState extends State<Bnavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:wid[i],
      bottomNavigationBar: BottomNavigationBar(

          items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"

        ),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),
              label: "Notification"

            ),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken),
                label:"Heart"
            ),
            // BottomNavigationBarItem(icon: Icon(Icons.person_pin_rounded),
            //     label:"Profile"
            // ),
      ],
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.black,
            onTap: (index){
            setState((){
              i=index;
            });

            },
            // unselectedItemColor: Colors.green,
      ),
    );
  }
}
