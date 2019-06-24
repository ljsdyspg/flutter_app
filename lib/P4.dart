/// @program: flutter_app
/// description: flutter 布局
/// @author: spg
/// @create: 2019-06-20 10:10
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("flutter 布局"),
        ),
        body: new Center(
          child: new MaterialButton(
            onPressed: () {},
            child: new Text('Hello'),
            padding: new EdgeInsets.only(left: 10.0, right: 10.0),
          ),
        ),
      ),
    );
  }
}