import 'package:belajar_flutter/pages/page_satu.dart';
import 'package:belajar_flutter/pages/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.black,
        title:const Text("Drawer", style: TextStyle(color: Colors.white),),
      ),
    
      drawer: Drawer( //sebagai sideabar
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.all(20),
              width: double.infinity,
              height: 120,
              alignment: Alignment.bottomLeft,
              color:const Color.fromRGBO(58, 66, 86, 1.0),
              child:const Text(
                "Menu Pilihan",
                selectionColor: Colors.white,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
               onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>const PageSatu()));
              },
              leading:const Icon(Icons.home, color: Colors.black,),
              title:const Text(
                style: TextStyle(color: Colors.black),
                "Home",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                //bisa digunakan untuk routing
                Navigator.of(context).pushReplacement( //pushreplacement digunakan untuk ketika berganti page maka page sebelumnya akan dihapus
                  MaterialPageRoute(builder: (context) =>const SettingPage()),
                );
              },
              leading:const Icon(Icons.settings, color: Colors.black,),
              title:const Text(
                "Setting",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body:const Center(child: Text("some text here", style: TextStyle(color: Colors.white),)),
      backgroundColor:const Color.fromRGBO(58, 66, 86, 1.0),
    );
  }
}
