import 'package:belajar_flutter/pages/galery_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/homepage'; // agar menyatakan bahwa halaman ini konstan untuk home_page
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.black,
        centerTitle: true,
        title:const Text("Home Page", style: TextStyle(color: Colors.white),),
      ),
      backgroundColor:const Color.fromRGBO(58, 66, 86, 1.0),
      body:const Center(
        child: Text("Home Page", style: TextStyle(color: Colors.white),),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
        Navigator.of(context).pushNamed(GaleryPage.nameRoute); // menggunakan pushNamed karena sudah di daftarkan pada main.dart
      },
      child:const Icon(Icons.arrow_right_alt, color: Colors.white,),
      ),
    );
  }
}
