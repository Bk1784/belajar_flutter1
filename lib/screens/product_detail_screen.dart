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
    final productId = ModalRoute.of(context)?.settings.arguments as String?;
    if (productId == null) {
      return const Scaffold(
        body: Center(
          child: Text('No Product Found!'),
        ),
      );
    }
    final product = Provider.of<AllProducts>(context).findByID(productId);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  "${product.imageUrl}",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              "${product.title}",
              style: const TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 15,
            ),
            Text("\$ ${product.price}"),
            SizedBox(
              height: 15,
            ),
            Text("${product.description}"),
          ],
        ));
  }
}
