import 'package:belajar_flutter/providers/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const routName = "/cart"; //membuat rute

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title:const Text("Cart"),
      ),
      body: Column(
        children: [
          Card(
            margin:const EdgeInsets.all(20),
            child: Container(
                padding:const EdgeInsets.all(20),
                child: Text("total harga: \$${cartData.totalHarga}")),
          ),
          Expanded(child: ListView.builder(
            itemCount: cartData.items.length,
            itemBuilder: (context, index) {
            return ListTile(
              title: Text("Nama Produk:  ${cartData.items.values.toList()[index].title}"),
              subtitle: Text("Jumlah Produk: ${cartData.items.values.toList()[index].qty}"),
              trailing: Container(
                child: Text("\$${cartData.items.values.toList()[index].price * cartData.items.values.toList()[index].qty}"),
              ),
            );
          }))
        ],
      ),
    );
  }
}
