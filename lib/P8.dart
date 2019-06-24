import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// @create: 2019-06-20 10:24
/// @program: flutter_app
/// description: 自定义Widget
/// @author: spg

void main(){
  debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class CustomButton extends StatelessWidget {
  final String label;
  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: () {}, child: new Text(label));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Widget",
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Widget"),
        ),
        body: Center(
          child: CustomButton("My Button"),
        ),
      ),
    );
  }
}





