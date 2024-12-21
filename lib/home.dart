import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String data = 'belum ada input';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dialog",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Text(data), // mengambil string data yang di atas
      ),
      floatingActionButton: FloatingActionButton(
        // untuk melakukan aksi
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          print(
              "telah di klik"); // ketika icon di ketik maka akan dimunculkan print ini
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confrim"),
                  content: Text("are you sure delete this item?"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          print("klik No");
                          setState(() {
                            data = 'True';
                          });
                          Navigator.of(context)
                              .pop(); // ketika di klik no maka akan membuang lapisannya
                        },
                        child: Text("yes")),
                    ElevatedButton(
                        onPressed: () {
                          print("klik yes");
                          setState(() {
                            data = 'False';
                          });
                        },
                        child: Text("no")),
                  ],
                );
              }); // untuk menampilkan sebuah dialog
        },
        child: Icon(
          color: Colors.white,
          Icons.delete,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat, // tata letak ke tengah
    );
  }
}
