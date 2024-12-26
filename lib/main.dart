import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fliexible dan expanded"),
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
            
            ),
          ),
          Flexible(
            flex: 10,
            child: Container(
              height: 100,
              color: Colors.blue,
        
            ),
          ),
          Flexible(
            flex: 1,
            //fit: FlexFit.tight,//mengisi semua layar yang belum terisi
            //fit: FlexFit.loose, // menyesuaikan dengan tulisan
            //fit: FlexFit.values[10],

            child: Container(
              
              height: 100,
              color: Colors.green,
             
            ),
          ),
        ],
      ),
    );
  }
}