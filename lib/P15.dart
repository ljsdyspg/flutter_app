/// @program: flutter_app
/// description: Animate the properties of a container
/// AnimatedContainer
///
/// @author: spg
/// @create: 2019-06-24 11:16
import "package:flutter/material.dart";
import 'dart:math';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // 设置宽高
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedContainer"),
        ),
        body: Center(
          child: myAnimatedContainer(),
        ),
        floatingActionButton: myFloatingActionButton(),
      ),
    );
  }

  // AnimatedContainer控件
  AnimatedContainer myAnimatedContainer() {
    return AnimatedContainer(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: _borderRadius,
      ),
      duration: Duration(seconds: 1),
      // 定义动画时长
      curve: Curves.fastOutSlowIn,
    );
  }

  // FloatingActionButton控件
  FloatingActionButton myFloatingActionButton() {
    return FloatingActionButton(
        child: Icon(Icons.play_arrow), onPressed: pressFunction);
  }

  // 随机指定宽高，颜色，角半径
  pressFunction() {
    setState(() {
      final random = Random();

      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
