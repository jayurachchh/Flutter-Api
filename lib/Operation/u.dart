import 'package:first/Database/Database1.dart';
import 'package:first/model/user.dart';
import 'package:flutter/material.dart';
class Userlist1 extends StatefulWidget
{
  const Userlist1({Key? key}) : super(key: key);
  @override
  State<Userlist1> createState() => _Userlist1State();
}
class _Userlist1State extends State<Userlist1>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [],title: Text("User List")),
        body: FutureBuilder<bool>(builder: (context, snapshot) {
          if(snapshot.hasData)
          {
            return FutureBuilder <List<User>>(builder: (context, snapshot) {
              if (snapshot != null && snapshot.hasData) {
                return ListView.builder(itemBuilder: (context, index) {
                  return Container(child:
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(snapshot.data![index].uid.toString(),

                          ),
                          Text(snapshot.data![index].uname.toString(),

                          ),
                          Text(snapshot.data![index].ucityname.toString(),
                          ),
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
