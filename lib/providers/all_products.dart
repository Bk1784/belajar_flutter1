import 'dart:math';

import 'package:belajar_flutter/models/product.dart';
import 'package:flutter/material.dart';

class AllProducts with ChangeNotifier {
  // memprovide semua data
  final List<Product> _allproducts = 
    List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  //membuat getter
  List<Product> get allproducts {
    return [..._allproducts];
  }
  //untuk akses semua product

  // void addProduct() {
  //   _allProducts.ad(value);
  //   notifyListeners(); //ketika setiap product ditambahkan maka memberi tahu listener bahwa ada perubahan
  // }
}
