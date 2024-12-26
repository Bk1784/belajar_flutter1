import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//cupertino digunakan untuk menampilkan adaptive ketika perbedaan platform
//semisal jika platformnya android maka akan menampilkan adaptive androit
// jika platformnya iOS maka akan menampilkan adaptive iOS

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
        title: Text("Cupertino"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: Colors.white,
                        child: CupertinoDatePicker(onDateTimeChanged: (datetime) {
                          print(datetime);
                        },
                        initialDateTime: DateTime.now(),),
                      );
                    }

                    // ? CupertinoAlertDialog(
                    //     title: Text("Delete Item"),
                    //     content: Text("Are you sure to delete this item"),
                    //     actions: [
                    //       TextButton(
                    //           onPressed: () {}, child: Text("Yes")),
                    //       TextButton(onPressed: () {}, child: Text("No")),
                    //     ],
                    //   )
                    // : AlertDialog(
                    //     title: Text("Delete data"),
                    //     content: Text("are you sure delete this data"),
                    //     actions: [
                    //       TextButton(
                    //           onPressed: () {}, child: Text("Yes")),
                    //       TextButton(onPressed: () {}, child: Text("No")),
                    //     ],
                    //   );

                    );
              },
              child: Text('Alert'))),
    );
  }
}
