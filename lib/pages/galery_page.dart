import 'package:belajar_flutter/pages/photos_page.dart';
import 'package:flutter/material.dart';

class GaleryPage extends StatelessWidget {
   static const nameRoute = '/galery'; // untuk menyatakan bahwa halaman ini konstan galer_page
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor:const Color.fromRGBO(58, 66, 86, 1.0),
        title:const Text("Galery Page", style: TextStyle(color: Colors.white),),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ const
            Text("Gallery Page", style: TextStyle(color: Colors.white),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child:const Text("<< back", style: TextStyle(color: Colors.white),)),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(PhotosPage.nameRoute); //menggunakan pushNamed dikarenakan sudah didaftarkan route pada main.dart
                    },
                    child:const Text("Next >>", style: TextStyle(color: Colors.white),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
