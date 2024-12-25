import 'dart:math';

import 'package:belajar_flutter/models/product.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Faker faker = Faker(); //membuat data fake

  @override
  Widget build(BuildContext context) {
    List<Product> dumyData = List.generate(100, (index) {
      return Product(
          "https://picsum.photos/id/$index/200", //untuk imgURL
          faker.food.restaurant(), //untuk judul restorant
          10000 +
              Random().nextInt(
                  100000), //untuk harga menggunakan angka random dan tipe variable, dan artinya harganya mulai 10000 hingga 100000
          faker.lorem.sentence()); //digunakan untuk fake deskripsi
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("market Place"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GridTile(
        
            child: Image.network(dumyData[index].imageURL),
            footer: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Text(dumyData[index].judul, style: TextStyle(color: Colors.white),),
                  Text('Rp ${dumyData[index].harga}'),
                  Text(dumyData[index].deskripsi),
                ],
              ),
            ),
          );
        },
        itemCount: dumyData.length, //untuk menghitung data dummy
      ),
    );
  }
}
