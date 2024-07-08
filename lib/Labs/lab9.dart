import 'package:flutter/material.dart';

class Lab9 extends StatelessWidget {
  const Lab9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(
      children: [
        Expanded(child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage('images/j2.jpg'),
              fit: BoxFit.fill,
            )
          ),
        )),
        Expanded(child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
                fit: BoxFit.fill,
              )
          ),
        )),
      ],
    ),);
  }
}
