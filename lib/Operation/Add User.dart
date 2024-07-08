import 'package:first/Database/database.dart';
import 'package:first/Operation/Op1.dart';
import 'package:first/model/Tbl_User.dart';
import 'package:first/model/city_model.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:intl/intl.dart';
import 'package:quickalert/quickalert.dart';

class AddUser extends StatefulWidget {
  // const AddUser({Key? key}) : super(key: key);
  late Usermodel? model;

  AddUser({required this.model});

  @override
  State<AddUser> createState() => _AddUserState();
}
class _AddUserState extends State<AddUser> {
  Operation1 op = Operation1();
  late Citymodel model;
  bool isgetcity = true;
  DateTime selectdate = DateTime.now();
  MyDatabase mydb = MyDatabase();
  late TextEditingController txt;
  var formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.model!= null){
     // List date=widget.model!.DOB.split("-");
      //print(date);
      try
      {
        selectdate=new DateFormat("yyyy-MM-dd").parse(widget.model!.DOB);
      }
      //yyyy-MM-dd hh:mm:ss
      catch(Exception )
    {
      print("");
    }
    }

    txt = TextEditingController(
        text: widget.model != null ? widget.model!.UName : '');
  }

// DateTime date1 = DateTime.parse("2022-05-30 11:47:00");
// DateTime date2 = DateTime.parse("2022-05-31 10:57:00");
// Duration diff = date1.differ ence(date2);
//Duration diff = date1.difference(date2);

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
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Row(
          children: [Text("Add User")],
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: FutureBuilder<List<Citymodel>>(
                builder: (context, snapshot) {
                  if (snapshot.hasData && snapshot.data != null) {
                    if (isgetcity) {
                      model = widget.model== null
                          ? snapshot.data![0]
                          : snapshot.data![getSelectedPosition(
                              snapshot.data, widget.model!.CityId)];
                    }
                    return DropdownButtonHideUnderline(
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
                            .map((item) => DropdownMenuItem<Citymodel>(
                                  value: item,
                                  child: Text(
                                    item.CityName.toString(),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: model,
                        onChanged: (value) {
                          setState(() {
                            isgetcity = false;
                            model = value!;
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
                  } else {
                    return Container();
                  }
                },
                future: isgetcity ? mydb.getdatafromcitymodel() : null,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Enter the Username",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            TextFormField(
              controller: txt,
              obscureText: false,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // hintText: "Enter the Password",
                // labelText: "Enter the Name "
              ),
              style: TextStyle(fontSize: 20, color: Colors.blue),
              validator: (value) {
                if (value != null && value.isEmpty ||
                    value!.trim().length == 0) {
                  return 'Please Enter the User Name';
                } else if (value!.length < 8) {
                  return 'Please Enter the valid User Name';
                }
              },
            ),
            SizedBox(height: 10),
            InkWell(
              child: Text(getcurrentdate(selectdate)),
              onTap: () {
                _pickDateDialog();
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(right: 300),
              color: Colors.blue,
              //margin: EdgeInsets.only(top: 15),
              child: TextButton(
                  onPressed: () {
                    setState(() async {
                      if (formKey.currentState!.validate()) {
                        if (model.CityId == -1)
                        {
                          showalert();
                        }
                        else
                        {
                          //await mydb.insertdata(uname:txt.text, Dob, Cityid, Uid)
                          await mydb.insertdata(
                              uname: txt.text,
                              Dob: selectdate.toString(),
                              Cityid: model.CityId.toString(),
                              Uid: widget.model != null
                                  ? widget.model!.Uid
                                  : -1);
                          //print("log 1");
                        }
                      }
                      Navigator.of(context).pop(true);
                    });
                    // String a=model.CityId.toString();
                    // print("$a");
                    // if(a<=0)
                    // {
                    //
                    // }
                    //return showalert();
                    // int  birthday = DateTime(1967, 10, 12);
                    // int  date2 = DateTime.now();
                    // int  difference = date2.difference(birthday).inDays;
                    // int c=difference/365
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),

            // Container(
            // color: Colors.blue,
            //   child: TextButton(onPressed: () {
            //     // setState(() async {
            //     //
            //     //   //showAlertDialog(context);
            //     //   //mydb.delete()
            //     // });
            //   },
            //       child: Text("Delete",style: TextStyle
            //         (fontSize: 15,color: Colors.white),)
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: selectdate,
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        selectdate = pickedDate;
      });
    });
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

  String getcurrentdate(dateToFormat) {
    if (dateToFormat != null) {
  return DateFormat('dd--MM-yyyy').format(dateToFormat).toString();
  } else {
  return DateFormat('dd--MM-yyyy').format(DateTime.now()).toString();
  }
}

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        mydb.delete('Uid');
        Navigator.of(context).pop();
      },
    );
    Widget noButton = TextButton(
      child: Text("No"),
      onPressed: () {
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
