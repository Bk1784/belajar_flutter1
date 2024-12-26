import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//media query: digunakan untuk mencocokkan kegunaan sesuai dengan devices yang di pakai
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); //digunakan agar tetap keadaan potrait walaupun hp/ devices dimiringkan
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context)
        .size
        .height; // sebelum implementasi emdia query inisialisasi dulu height

    final MediaQueryWidth = MediaQuery.of(context)
        .size
        .width; // sebelum implementasi emdia query inisialisasi dulu width

    final myAppBar = AppBar(
      backgroundColor: Colors.grey[900],
      centerTitle: true,
      title: Text(
        "Media Query/ Responsive Adaptive",
        style: TextStyle(color: Colors.white),
      ),
    );

    final bodyHeight = MediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context)
            .padding
            .top; // untuk menentukan bodyHeight  caranya tinggi keseluruhan mediaQuery dikurangi tinggi dari kebutuhan AppBar dikurangi juga paddingTop.

    final bool isLanScape = MediaQuery.of(context).orientation ==
        Orientation
            .landscape; //artinya media query sekarang == landscape atau tidak. jika landscape maka nilai isLandScap = true
    return Scaffold(
        appBar: myAppBar, //menjalankan media query pada AppBar
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: Center(
          //mode landscape
          child: (isLanScape)
              ? //jika landcape maka keluarkan sintak di bawah ini sampai tanda ':' (titik dua)
              Column(
                  //ukuran landscap dibuat setengah setengah
                  children: [
                    Container(
                      height: bodyHeight *
                          0.3, //tinggi container yang berwarna hitam
                      width: MediaQueryWidth, // untuk presentasi lebar width
                      color: Colors.black,
                    ),
                    Container(
                      height: bodyHeight *
                          0.7, // menentukan tinggi media query dengan 0.7 berarti 70 %
                      color: Colors.grey[900],
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemCount: 100,
                          itemBuilder: (context, index) {
                            return ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: 80,
                                maxHeight: 100
                              ),
                              child: Card(
                                color: Colors.grey[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10) //radius sudut card
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Text("Hello World")
                                    ],
                                  ),
                                ),
                                // title: Text(
                                //   "Hello world",
                                //   style: TextStyle(color: Colors.white),
                                // ),
                                // leading: CircleAvatar(),
                              ),
                            );
                          }),
                    )
                  ],
                )
              : Column(
                  // mode potrait
                  children: [
                    Container(
                      height: bodyHeight *
                          0.3, //tinggi container yang berwarna hitam
                      width: MediaQueryWidth, // untuk presentasi lebar width
                      color: Colors.black,
                    ),
                    Container(
                      height: bodyHeight *
                          0.7, // menentukan tinggi media query dengan 0.7 berarti 70 %
                      color: Colors.grey[900],
                      child: ListView.builder(
                          itemCount: 100,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.green[800],
                              margin:const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 16),
                              child:const Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      "Hello World",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
        ));
  }
}
