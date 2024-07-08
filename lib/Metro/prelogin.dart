import 'package:first/Metro/login.dart';
import 'package:first/Metro/signup.dart';
import 'package:flutter/material.dart';

class Prelogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Expanded(child: Stack(children: [],)
          Expanded(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/prelogin.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.centerRight,
                color: Color(0x99000000),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    child: Image.asset('assets/images/logo.png',
                        height: 100, width: 100, alignment: Alignment.center),
                  ),
                  Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                    "INDIA'S\nMOST TRUSTED\nMATRIMONY BRAND",
                    style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                      ))
                ],
              )
            ],
            //     (decoration: BoxDecoration(
            //      image: DecorationImage(
            //     image: AssetImage('images/prelogin.jpg')
            // )
            // ),
          )),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) {
                  //     return Login();
                  //   },
                  // ));
                  Navigator.pushNamed(context, '/Login');
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.black,
                  child: Center(
                      child: Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))),
                ),
              )),
              Expanded(
                  child: InkWell(onTap:() {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) {
                    //     return Signup();
                    //   },
                    // ));
                    Navigator.pushNamed(context, '/Signup');
                  },
                    child: Container(
                color: Colors.green,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      Icon(Icons.keyboard_arrow_right,color: Colors.white,)
                    ],
                ),
              ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
