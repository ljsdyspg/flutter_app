import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: Center(
          child: Text("Demo Demo"),
        ),
      ),
    );
  }

}