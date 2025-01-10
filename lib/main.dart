import 'package:belajar_flutter/models/http_provider.dart';
import 'package:belajar_flutter/pages/home_provider.dart';
import 'package:belajar_flutter/pages/home_stateful.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeStateful(),
      home: ChangeNotifierProvider(create: (context) => HttpProvider(), child: HomeProvider(),),
    );
  }
}
