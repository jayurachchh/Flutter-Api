import 'package:first/Database/Database1.dart';
import 'package:first/model/user.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
class Insert extends StatefulWidget {
  const Insert({Key? key}) : super(key: key);

  @override
  State<Insert> createState() => _InsertState();
}
class _InsertState extends State<Insert> {
var formkey=GlobalKey<FormState>();
bool isgetcity= true;
late User user;
Database1 db=Database1();
TextEditingController txt=TextEditingController();

int getSelectedPosition(list, cityID) {
  if (cityID != null) {
    for (int i = 0; i < list.length; i++) {
      if (cityID == list[i].CityId) {
        return i;
      }
    }
  }
  return 0;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions: [],title: Text("Insert data"),
    ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: FutureBuilder<List<User>>(builder:(context, snapshot) {
                if(snapshot.hasData && snapshot.data!=null)
                  {
                    if (isgetcity) {
                      user=snapshot.data![0];
                    }

                    return
                      DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            // hint: Row(
                            //   children: const [
                            //     Icon(
                            //       Icons.list,
                            //       size: 16,
                            //       color: Colors.yellow,
                            //     ),
                            //     SizedBox(
                            //       width: 4,
                            //     ),
                            //     Expanded(
                            //       child: Text(
                            //         'Select Item',
                            //         style: TextStyle(
                            //           fontSize: 14,
                            //           fontWeight: FontWeight.bold,
                            //           color: Colors.yellow,
                            //         ),
                            //         overflow: TextOverflow.ellipsis,
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            items: snapshot.data!
                                .map((item) => DropdownMenuItem<User>(
                              value: item,
                              child: Text(
                                item.ucityname.toString(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                                .toList(),
                            value: user,
                            onChanged: (value) {
                              setState(() {
                                isgetcity = false;
                                user = value!;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                            ),
                            iconSize: 14,
                            // iconEnabledColor: Colors.yellow,
                            iconDisabledColor: Colors.grey,
                            buttonHeight: 50,
                            buttonWidth: 160,
                            buttonPadding:
                            const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: Colors.black26,
                              ),
                              color: Colors.blue,
                            ),
                            // buttonElevation: 2,
                            // itemHeight: 40,
                            // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                            // dropdownMaxHeight: 200,
                            // dropdownWidth: 200,
                            // dropdownPadding: null,
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.blue,
                            ),

                            // dropdownElevation: 8,
                            // scrollbarRadius: const Radius.circular(40),
                            // scrollbarThickness: 6,
                            // scrollbarAlwaysShow: true,
                            // offset: const Offset(-20, 0),
                          ),
                        );

                        //        DropdownButtonHideUnderline(
                        //         child: DropdownButton2(
                        //           isExpanded: true,
                        //           // hint: Row(
                        //           //   children: const [
                        //           //     Icon(
                        //           //       Icons.list,
                        //           //       size: 16,
                        //           //       color: Colors.yellow,
                        //           //     ),
                        //           //     SizedBox(
                        //           //       width: 4,
                        //           //     ),
                        //           //     Expanded(
                        //           //       child: Text(
                        //           //         'Select Item',
                        //           //         style: TextStyle(
                        //           //           fontSize: 14,
                        //           //           fontWeight: FontWeight.bold,
                        //           //           color: Colors.yellow,
                        //           //         ),
                        //           //         overflow: TextOverflow.ellipsis,
                        //           //       ),
                        //           //     ),
                        //           //   ],
                        //           // ),
                        //           items: snapshot.data!
                        //               .map((item) => DropdownMenuItem<User>(
                        //             value: item,
                        //             child: Text(
                        //               item.ucityname.toString(),
                        //               style: const TextStyle(
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.bold,
                        //                 color: Colors.white,
                        //               ),
                        //               overflow: TextOverflow.ellipsis,
                        //             ),
                        //           ))
                        //               .toList(),
                        //           value:user,
                        //           onChanged: (value) {
                        //             setState(() {
                        //               isgetcity = false;
                        //               user = value!;
                        //             });
                        //           },
                        //           icon: const Icon(
                        //             Icons.arrow_drop_down,
                        //           ),
                        //           iconSize: 14,
                        //           // iconEnabledColor: Colors.yellow,
                        //           iconDisabledColor: Colors.grey,
                        //           buttonHeight: 50,
                        //           buttonWidth: 160,
                        //           buttonPadding:
                        //           const EdgeInsets.only(left: 14, right: 14),
                        //           buttonDecoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(14),
                        //             border: Border.all(
                        //               color: Colors.black26,
                        //             ),
                        //             color: Colors.blue,
                        //           ),
                        //           // buttonElevation: 2,
                        //           // itemHeight: 40,
                        //           // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                        //           // dropdownMaxHeight: 200,
                        //           // dropdownWidth: 200,
                        //           // dropdownPadding: null,
                        //           dropdownDecoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(14),
                        //             color: Colors.blue,
                        //           ),
                        //
                        //           // dropdownElevation: 8,
                        //           // scrollbarRadius: const Radius.circular(40),
                        //           // scrollbarThickness: 6,
                        //           // scrollbarAlwaysShow: true,
                        //           // offset: const Offset(-20, 0),
                        //         ),
                        //       );
                        //     }
                        // FutureBuilder<List<User>>(
                        //   builder: (context, snapshot)
                        //   {
                        //     if (snapshot.hasData && snapshot.data != null) {
                        //       user=snapshot.data![0];
                        //       // if (isgetcity) {
                        //       //   u = widget.u == null
                        //       //       ? snapshot.data![0]
                        //       //       : snapshot.data![getSelectedPosition(
                        //       //       snapshot.data, widget.user!.ucityname)];
                        //       // }
                        //        DropdownButtonHideUnderline(
                        //         child: DropdownButton2(
                        //           isExpanded: true,
                        //           // hint: Row(
                        //           //   children: const [
                        //           //     Icon(
                        //           //       Icons.list,
                        //           //       size: 16,
                        //           //       color: Colors.yellow,
                        //           //     ),
                        //           //     SizedBox(
                        //           //       width: 4,
                        //           //     ),
                        //           //     Expanded(
                        //           //       child: Text(
                        //           //         'Select Item',
                        //           //         style: TextStyle(
                        //           //           fontSize: 14,
                        //           //           fontWeight: FontWeight.bold,
                        //           //           color: Colors.yellow,
                        //           //         ),
                        //           //         overflow: TextOverflow.ellipsis,
                        //           //       ),
                        //           //     ),
                        //           //   ],
                        //           // ),
                        //           items: snapshot.data!
                        //               .map((item) => DropdownMenuItem<User>(
                        //             value: item,
                        //             child: Text(
                        //               item.ucityname.toString(),
                        //               style: const TextStyle(
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.bold,
                        //                 color: Colors.white,
                        //               ),
                        //               overflow: TextOverflow.ellipsis,
                        //             ),
                        //           ))
                        //               .toList(),
                        //           value:user,
                        //           onChanged: (value) {
                        //             setState(() {
                        //               isgetcity = false;
                        //               user = value!;
                        //             });
                        //           },
                        //           icon: const Icon(
                        //             Icons.arrow_drop_down,
                        //           ),
                        //           iconSize: 14,
                        //           // iconEnabledColor: Colors.yellow,
                        //           iconDisabledColor: Colors.grey,
                        //           buttonHeight: 50,
                        //           buttonWidth: 160,
                        //           buttonPadding:
                        //           const EdgeInsets.only(left: 14, right: 14),
                        //           buttonDecoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(14),
                        //             border: Border.all(
                        //               color: Colors.black26,
                        //             ),
                        //             color: Colors.blue,
                        //           ),
                        //           // buttonElevation: 2,
                        //           // itemHeight: 40,
                        //           // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                        //           // dropdownMaxHeight: 200,
                        //           // dropdownWidth: 200,
                        //           // dropdownPadding: null,
                        //           dropdownDecoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(14),
                        //             color: Colors.blue,
                        //           ),
                        //
                        //           // dropdownElevation: 8,
                        //           // scrollbarRadius: const Radius.circular(40),
                        //           // scrollbarThickness: 6,
                        //           // scrollbarAlwaysShow: true,
                        //           // offset: const Offset(-20, 0),
                        //         ),
                        //       );
                        //     }
                        //     else {
                        //       return Container();
                        //     }
                        //   },
                        //   future: isgetcity ? Database1().getdatafromuser() : null,
                        // ),
                  }else
                    {
                        return Container();
                    }

              },
                  future:isgetcity?Database1().getdatafromuser() :null,
              ),
            ),
            Text("Enter the User Name",style: TextStyle(fontSize: 20),),
            TextFormField(
              controller: txt,
              style: TextStyle(fontSize: 20),
              validator: (value) {
                if (value != null && value.isEmpty ||
                    value!.trim().length == 0) {
                  return 'Please Enter the User Name';
                } else if (value!.length < 8) {
                  return 'Please Enter the valid User Name';
                }
              },),
           SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              child: TextButton(onPressed: () async {

                  if(formkey.currentState!.validate())
                  {
                    if(user.uid==-1)
                      {
                        showalert();
                      }else
                        {
                          await Database1().insertdata1(
                              uname:txt.text.toString(),
                              ucityname:user.ucityname.toString(),
                              uid:user.uid);
                        }
                  // print("${txt.text.toString()}");
                  }
                  Navigator.of(context).pop(true);

              },
                  child: Text("Submit",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
void showalert() {
  QuickAlert.show(
    context: context,
    type: QuickAlertType.error,
    title: 'Oops...',
    text: 'Sorry, something went wrong',
    backgroundColor: Colors.black,
    titleColor: Colors.white,
    textColor: Colors.white,
  );
}
}
