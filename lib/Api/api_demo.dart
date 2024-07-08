import 'dart:convert';
import 'package:first/Api/insert.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api_demo extends StatefulWidget {
  const Api_demo({Key? key}) : super(key: key);
  @override
  State<Api_demo> createState() => _Api_demoState();
}
class _Api_demoState extends State<Api_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions:
        [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Insert(null);
              },)).then((value) {
                if(value==true)
                  {
                    setState(() {
                    });
                  }
              });
            },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add,color: Colors.white,size: 24,),
              ))
        ],
          title: Text("User list page"),
        ),
        body: FutureBuilder<http.Response>(
            builder: (context, snapshot) {
              if (snapshot.data != null && snapshot.hasData) {
                return ListView.builder(
                    itemCount:jsonDecode(snapshot.data!.body.toString()).length,
                  itemBuilder:  (context, index)
                  {
                     return  InkWell(onTap: ()
                     {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                         return Insert(jsonDecode(snapshot.data!.body.toString())[index]);
                       },)).then((value) {
                         if(value==true)
                         {
                           setState(() {
                           });
                         }
                       });
                     },

                       child: Card(
                         elevation: 10,
                         color: Color(0xff334f69),
                         shape: RoundedRectangleBorder(
                           side: BorderSide(
                             color: Color(0xFFedf5ff), //<-- SEE HERE
                           ),
                           borderRadius: BorderRadius.circular(10.0),
                         ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:EdgeInsets.only(right: 5),
                                          child: Text(
                                            (jsonDecode(snapshot.data!.body.toString())[index]["id"]).toString(),
                                            style: TextStyle(fontSize: 20,color: Color(0xffb6cbe0),),
                                          ),
                                        ),

                                        Text(
                                            (jsonDecode(snapshot.data!.body.toString())[index]["FacultyName"]).toString(),
                                          style: TextStyle(fontSize: 20,color: Color(0xffb6cbe0),),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      (jsonDecode(snapshot.data!.body.toString())[index]["FacultyDesignation"]).toString(),
                                      style: TextStyle(fontSize: 15,color: Color(0xffb6cbe0),),
                                    ),
                                    Text(
                                      (jsonDecode(snapshot.data!.body.toString())[index][ "FacultyEducationQualification"]).toString(),
                                      style: TextStyle(fontSize: 12,color: Color(0xffb6cbe0),),
                                    ),

                                  ],
                                ),
                              ),
                              InkWell(onTap: () async {
                                //showAlertDialog(context,jsonDecode(snapshot.data!.body.toString())[index]["id"] );
                               http.Response res = await updatefavourite(
                                   (jsonDecode(snapshot.data!.body.toString())[index]["id"]),
                                   (!getbool(snapshot.data!,index))
                               );
                               if(res.statusCode==200)
                                 {
                                   setState(() {

                                   });
                                 }

                              },
                                  child: Icon(
                                      (!getbool(snapshot.data!, index)
                                      )
                                      ?
                                    Icons.favorite_border_rounded:
                                    Icons.favorite,color:Color(0xffb6cbe0),size: 22,)
                              ),
                              InkWell(onTap: () {
                                showAlertDialog(context,jsonDecode(snapshot.data!.body.toString())[index]["id"] );
                              },
                                  child: Icon(Icons.delete,color:Color(0xffb6cbe0),size: 22,)
                              ),
                              Icon(Icons.keyboard_arrow_right_outlined,color:Color(0xffb6cbe0),size: 22,)
                            ],
                          ),
                        ),
                    ),
                     );
                },);

              }
              else
              {
                return Center(child: CircularProgressIndicator());
              }
            },
            future: facultyapi()));
  }
  Future<http.Response> facultyapi() async {
    var res = await http.get(
        Uri.parse("https://6346651b745bd0dbd37c8fbb.mockapi.io/duFaculty"));
    // <http.Response> data = jsonDecode(res.body.toString());

    //print("data is :: ${res.body.toString()}");
    return res;
  }
  Future<http.Response> delete(id) async {
    var res = await http.delete(
        Uri.parse("https://6346651b745bd0dbd37c8fbb.mockapi.io/duFaculty/$id"));
    // <http.Response> data = jsonDecode(res.body.toString());

    //print("data is :: ${res.body.toString()}");
    return res;
  }
  Future<http.Response> updatefavourite(id,value) async {
      Map<String,dynamic> map={};
    map["Isfavourite"]=value.toString();
    var res = await http.put(
        Uri.parse("https://6346651b745bd0dbd37c8fbb.mockapi.io/duFaculty/$id"),body: map);

    return res;
  }
 bool getbool(data,index)
 {
     try{
       return jsonDecode(data.body.toString())[index]["Isfavourite"] as bool;
        }
   catch(e)
   {
        try
       {
            return jsonDecode(data.body.toString())[index]["Isfavourite"].toString().toLowerCase()=='true';
       }
        catch(e)
        {
          return false;
        }
   }
 }
  showAlertDialog(BuildContext context,id) {
    // set up the buttons
    Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed:  ()
      async {
        http.Response res=await delete(id);
        if(res.statusCode==200)
          {
            setState(() {
            });
            Navigator.of(context).pop();
          }
      }
    );
    Widget noButton = TextButton(
      child: Text("No"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert"),
      content: Text("Are you sure want to delete this user??"),
      actions: [
        yesButton,
        noButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
// Future<List<dynamic>>
