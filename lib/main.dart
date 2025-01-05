import 'package:flutter/cupertino.dart';
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
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                    // initialEntryMode: DatePickerEntryMode.input
                    // initialDatePickerMode: DatePickerMode.year
                    selectableDayPredicate: (day){
                      if((day.isBefore(DateTime.now().subtract(Duration(days: 2))))){

                      }
                    } 
                  ).then(
                    (value) {
                      if (value != null)
                        setState(() {
                          selectDate = value;
                        });
                    },
                  );
                },
                child: Text("Date Picker")),
          ],
        ),
      ),
    );
  }
}
