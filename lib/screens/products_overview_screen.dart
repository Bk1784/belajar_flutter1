import 'package:belajar_flutter/providers/cart.dart';
import 'package:belajar_flutter/screens/cart_screen.dart';
import 'package:belajar_flutter/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return badges.Badge(
                child: ch,
                badgeContent: Text(value.jumlahPesanan.toString()),
              );
            },
            child: IconButton(
                  icon:const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      CartScreen.routName,
                    );
                  },
                ),
          )
        ],
      ),
      body: const ProductGrid(),
    );
  }
}
