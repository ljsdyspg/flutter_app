/// @program: flutter_app
/// description: HTTP请求
/// 点击按钮，向baidu发送get请求，在中间显示StatusCode
/// @author: spg
/// @create: 2019-06-23 20:25

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "HTTP Demo",
        theme: ThemeData(primaryColor: Colors.green),
        home: stateText());
  }
}

class stateText extends StatefulWidget {
  @override
  _stateTextState createState() => _stateTextState();
}

class _stateTextState extends State<stateText> {
  String textToShow = "Http Demo";

  setText(int statusCode) {
    setState(() {
      textToShow = statusCode.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Demo"),
      ),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final myFuture = http.get("http://www.baidu.com");
          myFuture.then((resp) => setText(resp.statusCode));
        },
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
