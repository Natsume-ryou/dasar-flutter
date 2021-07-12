import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PERCOBAAN LISTVIEW',
        theme: ThemeData(),
        home: ScroolingScreen());
  }
}

class ScroolingScreen extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '$number', // ditampilkan sesuai item
                style: TextStyle(fontSize: 30),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
