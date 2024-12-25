import 'package:flutter/foundation.dart';
class Product {

    @required String judul;
    @required int harga;
    @required String imageURL;
    @required String deskripsi;

  Product(this.judul, this.imageURL, this.harga, this.deskripsi);
}
