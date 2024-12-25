import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "page 2",
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(), //untuk menghilangkan Icon kembali
      ),
      body: const Center(
        child: Text("ini Page 2"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context)
              .pop(); // menambahkan pop untuk keluar dari layer 2 ke layer 1
        },
        child: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ), // panah icon menghadap ke kiri
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, //agar icon berada di tengah
    );
  }
}
