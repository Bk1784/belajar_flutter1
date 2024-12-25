import 'package:belajar_flutter/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "page 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      body: const Center(
        child: Text(
          "ini Page 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context)
              .push(// menambahkan push dikarenakan menambahkan layer 2
                  MaterialPageRoute(builder: (context) {
            return const Page2();
          }));
        },
        child: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        ), //panah icon menghadap ke kekanan
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, //agar icon berada di tengah
    );
  }
}
