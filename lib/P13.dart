/// @program: flutter_app
/// description: Stack
/// @author: spg
/// @create: 2019-06-21 16:01

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final showCard = true; // Set to false to show Stack

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(child: showCard ? _buildCard() : _buildStack()),
      ),
    );
  }

// #docregion Card
  Widget _buildCard() => SizedBox(
        height: 300,
        child: Card(
          child: Column(
            children: [
              Expanded(
                child:
                Center(
                  child: ListTile(
                    title: Text('1625 Main Street',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text('My City, CA 99984'),
                    leading: Icon(
                      Icons.restaurant_menu,
                      color: Colors.blue[500],
                    ),
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: ListTile(
                  title: Text('(408) 555-1212',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: ListTile(
                  title: Text('costa@example.com'),
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

// #enddocregion Card
// #docregion Stack
  // Stack
  Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          // 实现圆形图片
          CircleAvatar(
            backgroundImage: AssetImage('images/pic0.jpg'),
            radius: 160,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            child: Text(
              'SPG',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
// #enddocregion Stack
}
