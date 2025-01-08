import 'package:belajar_flutter/models/cart_item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  final Map<String, CartItem> _items =
      {}; //map untuk menyimpan pasangan key dan value

  Map<String, CartItem> get items => _items; //membuat getter

  int get jumlahPesanan {
    return _items.length;
  } //untuk menjumlahkan atau menghitung jumlah pesanan

  double get totalHarga {
    var total = 0.0;
    _items.forEach((key, CartItem cartitem) {
      total += cartitem.qty * cartitem.price;
    });
    return total;
  }

  void addCart(String productId, String title, double price) {
    // fungsion digunakan untuk
    if (_items.containsKey(productId)) {
      //digunakan untuk memeriksa apakay key sudah ada dalam Map
      //,menambah product id yang sudah tersedia
      _items.update(
          productId,
          (value) => CartItem(
              id: value.id,
              title: value.title,
              price: value.price,
              qty: value.qty + 1));
    } else {
      //namabah product baru
      _items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              qty: 1));
    }
    notifyListeners();
  }
}
