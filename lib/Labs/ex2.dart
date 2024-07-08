import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),

                      // borderRadius: BorderRadius.circular(30),
                      // border: Border.all(
                      //   color: Colors.brown,
                      image: DecorationImage(
                        image: AssetImage('images/j1.jpg'),
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                ),flex:3 ,),
                // Expanded(child: Container(color:Colors.pinkAccent,margin:EdgeInsets.all(8),),flex:2),
                // Expanded(child: Container(color: Colors.yellowAccent,margin:EdgeInsets.all(8)),flex: 3,),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('images/j2.jpg'), fit: BoxFit.fill),
                  ),
                ),
                    ),flex: 2,),
                // Expanded(child: Container(color: Colors.orange,margin:EdgeInsets.all(8)),flex: 1,)
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('images/j3.jpg'), fit: BoxFit.fill),
                    ),
                  ),
                ),flex: 1,),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(

                                  image: AssetImage('images/j4.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        flex: 2,),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage('images/j6.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        )),
                        // Expanded(child: Container(color: Colors.limeAccent,margin:EdgeInsets.all(8)),flex: 2,),
                        // Expanded(child: Container(color: Colors.pink,margin:EdgeInsets.all(8)))
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage('images/j7.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          flex: 1,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage('images/j8.jpg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          flex: 2,),
                      ],
                    ))
                  ],
                ),
                flex: 5,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('images/j9.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                flex: 2,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Container
                    (
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage('images/j10.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                flex: 2,),
            ],
          ),
          flex: 4,
        )
      ],
    )));
  }
}
