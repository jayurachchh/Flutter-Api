import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Insert extends StatefulWidget {

  Insert(this.map);
  Map?  map;
  //const Insert({Key? key}) : super(key: key);

  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
var formkey=GlobalKey<FormState>();

TextEditingController txt1=TextEditingController();

TextEditingController txt2=TextEditingController();

TextEditingController txt3=TextEditingController();

@override
  void initState() {
    super.initState();
    txt1.text=widget.map==null?'':widget.map!['FacultyName'];
    txt2.text=widget.map==null?'':widget.map!['FacultyDesignation'];
    txt3.text=widget.map==null?'':widget.map!['FacultyEducationQualification'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Add User"),),
      body:Form(
        key: formkey,
        child: Column(children: [
          TextFormField(decoration: InputDecoration(hintText: "Enter the FacultyName"),
          controller: txt1,
          validator: (value)
            {
              if(value!=null && value.isEmpty)
                {
                  return "Enter the valid FacultyName";
                }
            },
          ),
          TextFormField(decoration: InputDecoration(hintText: "Enter the FacultyDesignation"),
            controller: txt2,
            validator: (value)
            {
              if(value!=null && value.isEmpty)
              {
                return "Enter the valid FacultyDesignation";
              }
            },
          ),
          TextFormField(decoration: InputDecoration(hintText: "Enter the FacultyEducationQualification"),
            controller: txt3,
            validator: (value)
            {
              if(value!=null && value.isEmpty)
              {
                return "Enter the valid FacultyEducationQualification";
              }
            },
          ),
          TextButton(
              onPressed: () {
            if(formkey.currentState!.validate())
            if(widget.map==null)
            {
              insertuser().then((value) => Navigator.of(context).pop(true));
            }

            else
                {
                  updateuser(widget.map!['id']).then((value) => Navigator.of(context).pop(true));
                }
          }, child: Text("Submit"))
        ]),
      ),

    );
  }
Future<void> updateuser(id) async {   Map map={};
map["FacultyName"]=txt1.text;
map["FacultyDesignation"]=txt2.text;
map["FacultyEducationQualification"]=txt3.text;
var  res1 = await http.put(
    Uri.parse("https://6346651b745bd0dbd37c8fbb.mockapi.io/duFaculty/$id"),body: map);
print(res1.body);
}
  Future<void> insertuser() async {   Map map={};
  map["FacultyName"]=txt1.text;
  map["FacultyDesignation"]=txt2.text;
  map["FacultyEducationQualification"]=txt3.text;
  var  res1 = await http.post(
      Uri.parse("https://6346651b745bd0dbd37c8fbb.mockapi.io/duFaculty"),body: map);
  print(res1.body);
  }
}
