import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
/// @program: flutter_app
/// description: 构建布局
/// @author: spg 
/// @create: 2019-06-20 10:44

void main(){
  debugPaintBaselinesEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Demo",
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Layout Demo"),
        ),
        body: Center(

        ),
      ),
    );
  }
}
