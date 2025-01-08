import 'package:belajar_flutter/models/http_stateful.dart';
import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});
  @override
   _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful? dataResponse;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("POST - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                (dataResponse == null || dataResponse!.id.isEmpty)
                    ? "ID : Belum ada data"
                    : "ID : ${dataResponse!.id}",
                style:const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse == null || dataResponse!.name.isEmpty)
                    ? "Belum ada data"
                    : "${dataResponse!.name}",
                style:const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse == null || dataResponse!.job.isEmpty)
                    ? "Belum ada data"
                    : "${dataResponse!.job}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse == null || dataResponse!.createdAt.isEmpty)
                    ? "Belum ada data"
                    : "${dataResponse!.createdAt}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectAPI("Bagus Kurniawan", "Developer Flutter")
                    .then(
                  (value) {
                    print(value.name);
                    setState(() {
                      dataResponse = value;
                    });
                  },
                );
              },
              child: Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
