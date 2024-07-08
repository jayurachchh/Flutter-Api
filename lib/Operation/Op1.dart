import 'package:first/Database/database.dart';
import 'package:first/Metro/index.dart';
import 'package:first/Operation/Add%20User.dart';
import 'package:first/Utils/util.dart';
import 'package:first/model/Tbl_User.dart';
//import 'package:first/Operation/Add_user.dart';
import 'package:first/model/city_model.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Operation1 extends StatefulWidget {
  const Operation1({Key? key}) : super(key: key);

  @override
  State<Operation1> createState() => _Operation1State();
}
class _Operation1State extends State<Operation1> {
  List<Usermodel> localList=[];
  List<Usermodel> searchlist=[];
  bool isgetdata=true;
  MyDatabase db=MyDatabase();
  TextEditingController txt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [
      InkWell(
        onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return AddUser(model: null);
        },)).then((value) {
          setState(() {

          });
        },);
        },
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(right: 40),
          child: Column
            (
            children: [
              Icon(Icons.add,color: Colors.white,size: 24 ,),
              Text("ADD"),
            ],
          ),
        ),
    ),
      )
    ],
        title: Row(
          children: [
            Icon(Icons.person_outline_sharp),
            SizedBox(width: 5),
            Text("Home")
          ],
        ),
    ),
        //
      // body: FutureBuilder<bool>(builder: (context, snapshot) {
        //   if (snapshot.hasData)
        //   {
        //     return FutureBuilder<List<Map<String, Object?>>>(
        //       builder: (context, snapshot) {
        //         if (snapshot != null && snapshot.hasData)
        //         {
        //           return ListView.builder(
        //             itemBuilder: ((context, index) {
        //               return Container(
        //                 child: Row(
        //                   children: [
        //                     Text (
        //                         (snapshot.data![index]['UName']).toString()
        //                     ),
        //
        //                     Text (
        //                         (snapshot.data![index]['CityName']).toString()
        //                     ),
        //                   ],
        //                 ),
        //               );
        //             }),
        //             itemCount: snapshot.data?.length,
        //           );
        //         }
        //         else {
        //           return Container(
        //             child: Text("data not found"),
        //           );
        //         }
        //       },
        //       future: MyDatabase().getdatafromdatabase(),
        //     );
        //   }
        //   else{
        //     return CircularProgressIndicator();
        //   }
        // },
        //     future: MyDatabase().copyPasteAssetFileToRoot()),
      body: FutureBuilder<bool>(builder: (context, snapshot) {
        if (snapshot.hasData)
        {
          return FutureBuilder<List<Usermodel>>(
            builder: (context, snapshot) {
              if (snapshot != null && snapshot.hasData)
              {
                if(isgetdata)
                  {
                    localList.addAll(snapshot.data!);
                    searchlist.addAll(localList);
                  }
                isgetdata=false;
                // localList.clear();
                return
                  Column(
                  children: [
                    TextFormField(
                      controller: txt,
                      onChanged: (value) {
                        searchlist.clear();
                        for(int i=0;i<localList.length;i++)
                          {
                            if(localList[i].UName.toLowerCase().
                            contains(value.toLowerCase()))
                              {
                                searchlist.add(localList[i]);
                              }
                          }
                        setState(() {
                        });
                      },
                      decoration: InputDecoration(hintText: 'Search User'),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: ((context, index) {

                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return AddUser(model: localList[index],);
                                  }
                              )).then((value) {
                                setState(() {

                                });
                              },);
                            },
                            child: Card(
                                  color: Colors.grey.shade300,
                                  elevation: 5,
                                  borderOnForeground: true,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            showAlertDialog(context,index);
                                            setState(() {
                                            });

                                          },
                                            child: Icon(Icons.delete,color: Colors.redAccent,size: 24,)),
                                      ),
                                        Expanded(
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                children: [
                                                  Text (
                                                      (searchlist[index].UName.toString())
                                                  ),
                                                  Text((searchlist[index].Uid.toString())),
                                                  Text(
                                                    (searchlist[index].DOB.toString()),
                                                        style: TextStyle(color: Colors.grey.shade600,fontSize:12)
                                                    ),
                                                  Text((searchlist[index].CityId.toString())),
                                                ],
                                              ),
                                            ),
                                          ),
                                        InkWell(onTap: () {
                                          setState(() {
                                            searchlist[index].favourite=!searchlist[index].favourite;
                                          });
                                        },
                                          child: Icon(searchlist[index].favourite?
                                            Icons.favorite_rounded:
                                            Icons.favorite_border_rounded,
                                            color: Colors.red,size: 24,),
                                        ),
                                        Icon(Icons.keyboard_arrow_right_outlined,
                                          color: Colors.grey.shade500,size: 24,)
                                      ],
                                    ),
                                  ),
                                ),
                          );

                        }),
                        itemCount: searchlist?.length,
                      ),
                    ),
                  ],
                );
              }
              else {
                return Container(
                  child: Text("data not found"),
                );
              }
            },
            future: isgetdata?MyDatabase().getdatafromusermodel():null,
          );
        }
        else{
          return CircularProgressIndicator();
        }
      },
          future: MyDatabase().copyPasteAssetFileToRoot()),
    );
  }
  showAlertDialog(BuildContext context,index) {

    // set up the buttons
    Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed:  () async {
         await db.delete(localList[index].Uid.toString());
        if(localList[index].Uid>0)
          {
            localList.removeAt(index);
          }
         setState(() {
         });
        Navigator.of(context).pop();

      },
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
