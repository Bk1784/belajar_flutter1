import 'package:belajar_flutter/providers/all_products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllProducts(),
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
        home: ScreenSementara(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

class ScreenSementara extends StatelessWidget {
  const ScreenSementara({super.key});

  @override
  Widget build(BuildContext context) {
    List<Text> myList = List.generate(25, (index) => Text("${index + 1}", style: TextStyle(fontSize: 35),),);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children:[
          Container(width: 100, height: 100, color: Colors.blueAccent,),
          ...myList,
          Container(width: 100, height: 100, color: Colors.blueAccent,),
          ],
      
      ),
    );
  }
}
