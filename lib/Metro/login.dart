import 'package:first/Labs/birth.dart';
import 'package:first/Metro/index.dart';
import 'package:first/Metro/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  var txt=TextEditingController();

  var pwd=TextEditingController();

  var formKey=GlobalKey<FormState>();
  bool rem=true;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Center(
      child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)
      )
    ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container()),
          Expanded(flex: 40,child:
          Container(
            child: Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
                elevation: 50,
          child: Padding(
             padding: const EdgeInsets.all(5),
            child: Form(
              key:formKey,
              child: Column(
               mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Text("Enter the Username",
                  style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
                  ),),
                  TextFormField(
                    controller: txt,
                      obscureText:false,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border:OutlineInputBorder(),
                        // hintText: "Enter the Password",
                        // labelText: "Enter the Name "
                      ),style: TextStyle(fontSize: 25,color:Colors.blue),
                    // validator: (value) {
                    //   if(value !=null && value.isEmpty)
                    //     {
                    //       return 'Please Enter the User Name';
                    //     }
                    //   else if(value!.length<8)
                    //     {
                    //       return 'Please Enter the valid User Name';
                    //     }
                    // },
                  ),
                  Text(txt.text),
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
                          return 'Please Enter the valid UserName';
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
                  InkWell(
                    onTap: ()
                      {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Signup();
                          },
                        ));
                      },
                      child: Center(child: Text("If dont Ragister please signUp",style:TextStyle(color:Colors.green,fontSize: 15),))),
                  Center(
                    child: Container(

                      color: Colors.blue,
                      margin: EdgeInsets.only(top: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(onPressed: (){
                                if(txt.text.toString()=='Jay Rachchh' && pwd.text.toString()=='jay@123')
                                {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return index();
                                    },
                                  ));
                                }
                                print("Username :${txt.text.toString()}");
                                print("password :${pwd.text.toString()}");
                                if(formKey.currentState!.validate())
                                  {
                                  }
                              },
                                  child: Text('Login',
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
