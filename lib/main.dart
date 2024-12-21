import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(
    90, 
    (index){
      return Container(
        // height: 50,
        // width: 150,
        color: Color.fromARGB(
          255, 
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
          )
      );
    });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: GridView.count(crossAxisCount: 3, children: myList, crossAxisSpacing: 10, mainAxisSpacing: 10, padding: EdgeInsets.all(20),),
        // body: GridView(
        //   padding: EdgeInsets.all(10),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 10,
        //   childAspectRatio: 3 / 4
        //   ),
        //   children: myList,
        //   ),
      ),
    );
  }
}
