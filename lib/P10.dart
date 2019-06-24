/// @program: flutter_app
/// description:
/// @author: spg
/// @create: 2019-06-20 16:06
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row and Col",
      theme: ThemeData(primaryColor: Colors.green),
      home: ImageState(),
    );
  }
}

class ImageState extends StatefulWidget {
  @override
  _ImageStateState createState() => _ImageStateState();
}

class _ImageStateState extends State<ImageState> {
  var toggle = 0;
  var sum = 6;

  void _toggle() {
    setState(() {
      if (toggle < sum - 1)
        toggle++;
      else
        toggle = 0;
    });
  }

  _getToggleChild() {
    switch (toggle) {
      case 0:
        return Row_image();
        break;
      case 1:
        return Row_image_expanded();
        break;
      case 2:
        return Col_image();
        break;
      case 3:
        return Col_image_expanded();
        break;
      case 4:
        return Stars();
        break;
      case 5:
        return StartsWithReviews();
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    print("toggle: $toggle" );

    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Col"),
      ),
      body: _getToggleChild(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility_new),
          tooltip: "切换",
          onPressed: _toggle),
    );
  }
}

class Row_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),
        ],
      ),
    );
  }
}

class Col_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/pic1.jpg'),
          Image.asset('assets/pic2.jpg'),
          Image.asset('assets/pic3.jpg'),
        ],
      ),
    );
  }
}



class Row_image_expanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/pic1.jpg'),
          ),
          Expanded(
            flex: 5,
            child: Image.asset('assets/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/pic3.jpg'),
          ),
        ],
      ),
    );
  }
}

class Col_image_expanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image.asset('assets/pic1.jpg'),
          ),
          Expanded(
            flex: 5,
            child: Image.asset('assets/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/pic3.jpg'),
          ),
        ],
      ),
    );
  }
}

class Stars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min, // 缩短MainAxis长度,使Widget之间的距离最短
        children: <Icon>[
          Icon(Icons.star, color: Colors.green,),
          Icon(Icons.star, color: Colors.red,),
          Icon(Icons.star, color: Colors.blue,),
          Icon(Icons.star, color: Colors.grey,),
          Icon(Icons.star, color: Colors.yellow,),
        ],
      ),
    );
  }
}

class StartsWithReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stars(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '199 reviews',
              style: descTextStyle,
            ),
          )
        ],
      ),
    );
  }
}

final descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);