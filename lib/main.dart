import 'package:belajar_flutter/providers/all_products.dart';
import 'package:belajar_flutter/providers/cart.dart';
import 'package:belajar_flutter/screens/cart_screen.dart';
import 'package:belajar_flutter/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //merapihkan codingan
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => AllProducts())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, secondary: Colors.amber),
          fontFamily: 'Lato',
        ),
        // home: ProductsOverviewScreen(),
        home:const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
          CartScreen.routName: (ctx) => const CartScreen(),
        },
      ),
    );
  }
}
