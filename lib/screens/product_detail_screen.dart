import 'package:belajar_flutter/providers/all_products.dart';
import 'package:belajar_flutter/providers/cart.dart';
import 'package:belajar_flutter/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

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
    final cart = Provider.of<Cart>(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Details'),
          actions: [
            Consumer<Cart>(
              builder: (context, value, ch) {
                return badges.Badge(
                  child: ch,
                  badgeContent: Text(value.jumlahPesanan.toString()),
                );
              },
              child: badges.Badge(
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(CartScreen.routName);
                    },
                    icon:const Icon(Icons.shopping_cart)),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.network(
                  "${product.imageUrl}",
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              "${product.title}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("\$ ${product.price}"),
            const SizedBox(
              height: 15,
            ),
            Text("${product.description}"),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("berhasil ditambahkan"),
                    duration: Duration(milliseconds: 500),
                  ));
                  cart.addCart(product.id.toString(), product.title.toString(),
                      double.parse(product.price.toString()));
                },
                child: const Text("add to cart")),
          ],
        ));
  }
}
