import 'package:belajar_flutter/pages/page_satu.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        centerTitle: true,
        title:const Text("Setting Page", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        //sebagai sideabr
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
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const SettingPage()));
              },
              leading:const Icon(Icons.settings, color: Colors.black,),
              title:const Text(
                style: TextStyle(color: Colors.black),
                "Setting",
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
