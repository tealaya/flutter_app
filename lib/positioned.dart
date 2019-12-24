import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '任务管理器title',
    theme: ThemeData(
      primaryColor: Colors.cyanAccent,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          '页面title',
        ),
      ),
      body: Container(
        width: 300,
        height: 700,
        color: Colors.red,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 100,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
//          width: 100,
//          height: 100,
                child: Text(
                  '1sd32',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
