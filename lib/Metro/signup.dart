import 'package:first/Labs/birth.dart';
import 'package:first/Metro/index.dart';
import 'package:first/Metro/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  var txt=TextEditingController();

  var pwd=TextEditingController();
  var emil=TextEditingController();
  var mo=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool rem=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text("SignUp",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)
          )
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Expanded(flex: 50,child:
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  elevation: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key:formKey,
                      child: Column(

                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Enter the Username",
                              style: TextStyle(
                                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                              ),),
                          ),
                          TextFormField(
                            controller: txt,
                            obscureText:false,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              // hintText: "Enter the Password",
                              // labelText: "Enter the Name "
                            ),style: TextStyle(fontSize: 25,color:Colors.blue),
                            validator: (value) {
                              if(value !=null && value.isEmpty)
                              {
                                return 'Please Enter the User Name';
                              }
                              else if(value!.length<8)
                              {
                                return 'Please Enter the valid User Name';
                              }
                            },
                          ),
                          Text(txt.text),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Enter the Email id",
                              style: TextStyle(
                                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                              ),),
                          ),
                          TextFormField(
                            controller: emil,
                            obscureText:false,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              // hintText: "Enter the Password",
                              // labelText: "Enter the Name "
                            ),style: TextStyle(fontSize: 25,color:Colors.blue),
                            validator: (value) {
                              if(value !=null && value.isEmpty)
                              {
                                return 'Please Enter the Email id';
                              }
                              else if(value!.length<8)
                              {
                                return 'Please Enter the valid Email id';
                              }
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text("Enter the Mobile No",
                              style: TextStyle(
                                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                              ),),
                          ),
                          TextFormField(
                            controller: mo,
                            obscureText:false,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              // hintText: "Enter the Password",
                              // labelText: "Enter the Name "
                            ),style: TextStyle(fontSize: 25,color:Colors.blue),
                            validator: (value) {
                              if(value !=null && value.isEmpty)
                              {
                                return 'Please Enter the Mobile no';
                              }
                              else if(value!.length<10)
                              {
                                return 'Please Enter the valid mo no';
                              }
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top:10),
                            child: Text("Enter the Password",style: TextStyle
                              (fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                            )
                            ),
                          ),
                          TextFormField(
                            controller: pwd,
                            obscureText:true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              // hintText: "Enter the Password",
                              // labelText: "Enter the Name "
                            ),
                            style: TextStyle(fontSize: 25,color:Colors.blue ),
                            validator: (value) {
                              if(value !=null && value.isEmpty)
                              {
                                return 'Please Enter Password ';
                              }
                              else if(value!.length<5)
                              {
                                return 'Please Enter the valid password';
                              }
                            },
                          ),

                          InkWell(
                            onTap: ()
                            {
                              setState(() {
                                rem =!rem;
                              });
                            },
                            child: Row(
                              children: [
                                Checkbox(value: rem, onChanged:(value)
                                {

                                }
                                ),
                                Text('Please give the contest')
                              ],
                            ),
                          ),
                          Center(
                            child: Container(
                              color: Colors.blue,
                              margin: EdgeInsets.only(top: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(onPressed: (){
                                  // if(txt.text.toString()=='Jay Rachchh' && pwd.text.toString()=='jay@123' && mo.text.toString()=='1234567890' && emil.text.toString()=='abc@gmail.com')
                                  // {
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) {
                                        return Birth(txt.text.toString(),pwd.text.toString(),emil.text.toString(),mo.text.toString());
                                      },
                                    ));

                                  print("Username :${txt.text.toString()}");
                                  print("password :${pwd.text.toString()}");
                                  if(formKey.currentState!.validate())
                                  {
                                  }
                                },
                                    child: Text('Signup',
                                      style: TextStyle
                                        (fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),),
            Expanded(child: Container()),
          ],),
      ),
    );
  }
}
