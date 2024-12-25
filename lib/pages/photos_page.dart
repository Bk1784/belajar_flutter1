import 'package:flutter/material.dart';

class PhotosPage extends StatelessWidget {
  static const nameRoute = '/photos'; //untuk menyatakan bahwa halaman ini konstan photos_page
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blueAccent,
        title:const Text("Photo Page", style: TextStyle(color: Colors.white),),
      ),
      body:const Center(
        child: Text("Photo Page"),
      ),
    
    );
  }
}