import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter layout demo',
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/banner.jpg',
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: <Widget>[
                  _titleSection,
                  _buttonSection,
                  _textSection,
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _titleSection = Container(
  padding: EdgeInsets.all(15),
//                    color: Colors.greenAccent,
  child: Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '标标题标题题',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            Text(
              '小标题标题标题标题',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
        size: 50,
      ),
      Text(
        '41',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ],
  ),
);

Widget _buttonSection = Container(
  margin: EdgeInsets.symmetric(
    vertical: 15,
  ),
//                    color: Colors.red,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _buildButtonColumn(Icons.share, 'ShARE'),
      _buildButtonColumn(Icons.call, 'CALL'),
      _buildButtonColumn(Icons.room, 'ROOM'),
    ],
  ),
);

Widget _buildButtonColumn(IconData icon, label) {
  return Column(
    children: <Widget>[
      Icon(
        icon,
        size: 35,
        color: Colors.blue,
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          '$label',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}

Widget _textSection = Container(
  padding: EdgeInsets.all(15),
//                    color: Colors.greenAccent,
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    style: TextStyle(
      fontSize: 24,
      height: 1.5,
    ),
  ),
);
