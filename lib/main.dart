import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
      );
  }
}

class MyHomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Dismissible", style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        
          padding: EdgeInsets.all(8),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              //dismisible digunakan untuk mengahpus sebuah kolomn atau baris atau listTile, bisa dihapus dengan menggeser ke akanan maupun ke kiri
              onDismissed: (direction) {
                //digunakan untuk ketika menghapus terdapat konfirmasi hapus
                if (direction == DismissDirection.endToStart) {
                  // looping untuk ketika dihapus ke kanan maupun ke kiri
                  print('end to start');
                } else {
                  print('start to end');
                }
              },
              confirmDismiss: (direction) {
                // untuk menampilkan dialog/ konfirmasi ketika dihapus
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("confirm"),
                        content: Text("are you sure delete this item?"),
                        actions: [
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('No'),
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: Text('yes'),
                          )
                        ],
                      );
                    });
              },
              key: Key(index.toString()),
              // direction: DismissDirection
              //     .endToStart, //untuk menghapus dari arah kanan ke kiri
              background: Container(
                color: Colors
                    .red, //untuk memeberikan warna background ketika dihapus
                child: Icon(Icons.delete), //menambahkan Icons delete
                alignment: Alignment.centerRight, // agar posisi disebelah kanan
                padding: EdgeInsets.only(right: 10),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Center(
                    child: Text("${index + 1}"),
                  ),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(faker.lorem.sentence()),
              ),
            );
          }),
    );
  }
}
