import 'package:belajar_flutter/providers/all_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    // ...
    final product = Provider.of<AllProducts>(context)
        .allproducts
        .firstWhere((prodid) => prodid.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Text("INI ADALAG PAGE PRODUK ${product.title}"),
      ),
    );
  }
}
