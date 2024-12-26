import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context)
        .size
        .height; // heightApp ini adalah keseluruhan tinggi dari pucuk devices hingga ujung bawah
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text("Layout Builder"),
    );
    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        width: widthApp,
        height: heightBody * 0.3,
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //menambah jarak samping
          children: [
            MyContainer(widthApp),
            MyContainer(widthApp),
            MyContainer(widthApp),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  double widthApp;
   MyContainer(this.widthApp); // menginisialisasi untuk melebarkan width app sesuai presentase
  //setelah diinisialisasi lalu deklarasikan pada MyContainer()

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //digunakan agar height container ini mengikuti height pada scaffold yang di atas
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.3,
          height: constraints.maxHeight * 0.5, // menambahkan constraints.maxHeight
          color: Colors.amber,
        );
      },
    );
  }
}
