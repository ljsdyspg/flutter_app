/// @program: flutter_app
/// description:
/// @author: spg
/// @create: 2019-06-20 16:57

import "package:flutter/material.dart";

final MyContainer = Container(
  decoration: BoxDecoration(
    color: Colors.black26,
  ),
  child: Column(
    children: [
      _buildImageRow(1),
      _buildImageRow(1),
      _buildImageRow(1),
    ],
  ),
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container",
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: MyContainer,
      ),
    );
  }
}

Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('assets/pic$imageIndex.jpg'),
      ),
    );

Widget _buildImageRow(int imageIndex) => Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1),
      ],
    );
