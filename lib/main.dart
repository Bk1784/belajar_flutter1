import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
        theme: ThemeData(
            /*
        brightness: Brightness.dark //untuk tema gelap
        visualDensity: VisualDensity.adaptivePlatformDensity, //untuk kepadatan aplikasi tergantung sisitem operasi masing"
        visualDensity: VisualDensity.compact, //untuk kepadatan aplikasi tergantung sisitem operasi masing"
        visualDensity: VisualDensity.comfortable, //untuk kepadatan aplikasi tergantung sisitem operasi masing"
        visualDensity: VisualDensity(vertical: 0, horizontal: 4), //untuk kepadatan aplikasi tergantung sisitem operasi masing"
        primarySwatch: Colors.red
        primaryColor: Colors.blueAccent
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.red
          )
        )
        */
        appBarTheme: AppBarTheme(
          color: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true
        ),
        
    ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "this is a text",
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "this is a text",
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "button",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mediation),
      ),
    );
  }
}
