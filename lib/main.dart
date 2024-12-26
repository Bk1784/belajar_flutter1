import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(title: Text("Fitted Box"),
        
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 300,
            height: 100,
            child: Center(
              child: FittedBox( //fitted box digunakan ketika menambahkan tulisan maka ukuran tulisan akan menyesuaikan dengan containernya
                child: Text(
                  "Halo",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

