/// @program: flutter_app
/// description: Fade a widget in and out 一个控件的淡入淡出
/// @author: spg
/// @create: 2019-06-24 11:52
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final String title = "Fade Demo";

  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: AnimatedIcon(
              icon: AnimatedIcons.add_event,
              progress: AlwaysStoppedAnimation<double>(0.0)),
        ),
      ),
    );
  }
}
