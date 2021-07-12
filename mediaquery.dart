import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEDIA QUERY',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Row(children: [
        Expanded(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Screen width: ${screenSize.width.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.white10, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'LayoutBuilder : ${constraints.maxWidth}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutQuery :${constraints.maxWidth}',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
