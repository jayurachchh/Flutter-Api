import 'package:first/Database/Database1.dart';
import 'package:first/Operation/insert.dart';
import 'package:first/model/user.dart';
import 'package:flutter/material.dart';
class Userlist extends StatefulWidget
{
  const Userlist({Key? key}) : super(key: key);
  @override
  State<Userlist> createState() => _UserlistState();
}
class _UserlistState extends State<Userlist>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [
      Container(
        margin: EdgeInsets.all(8),
        child: InkWell(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Insert();
          },));
        },
          child: Column(
            children: [
              Icon(Icons.add,size: 24,),
              Text("ADD")
            ],
          ),
        ),
      )
    ],title: Row(
      children: [
        Icon(Icons.person_outline_sharp),
        Text("User List")
      ],
    ),
    ),
      body: FutureBuilder<bool>(builder: (context, snapshot) {
        if(snapshot.hasData)
          {
            return FutureBuilder <List<User>>(builder: (context, snapshot) {
              if (snapshot != null && snapshot.hasData) {
                return ListView.builder(itemBuilder: (context, index) {
                  return Container(child:
                  Card(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(snapshot.data![index].uid.toString(),
                              style: TextStyle(
                                  color: Color(0xffb6cbe0), fontSize: 15)
                          ),
                          Text(snapshot.data![index].uname.toString(),
                              style: TextStyle(
                                  color: Color(0xffb6cbe0), fontSize: 15)
                          ),
                          Text(snapshot.data![index].ucityname.toString(),
                              style: TextStyle(
                                  color: Color(0xffb6cbe0), fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                  );
                }, itemCount: snapshot.data!.length,);
              }
              else {
                return Container(child: Text("No user found"),
                );
              }
            }, future: Database1().getdatafromuser(),);
          }
        else
          {
            return CircularProgressIndicator();
          }
      },future:Database1().copyPasteAssetFileToRoot(),)

    );
  }
}
