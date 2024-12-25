import 'package:belajar_flutter/pages/galery_page.dart';
import 'package:belajar_flutter/pages/home_page.dart';
import 'package:belajar_flutter/pages/photos_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute:
          '/homepage', // digunakan untuk ketika membuka halaman maka akan meminta langsung ke home_page
      routes: {
        //untuk ketika routenya banyak
        HomePage.nameRoute: (context) =>
            const HomePage(), //mendaftarkan routing ke home_page
        GaleryPage.nameRoute: (context) =>
            const GaleryPage(), //mendaftarkan routing ke gallery
        PhotosPage.nameRoute: (context) =>
            const PhotosPage() //mendaftarkan routing ke photo
      },
    );
  }
}
