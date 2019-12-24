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
        width: 380,
        height: 240,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            padding: EdgeInsets.all(16),
            width: 240, //max-width is 240
//           height: 100,
            child: Text(
              'hellohellohellohellohelllohellohellohelloeadfssssssssssss',
              style: TextStyle(
                fontSize: 48,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  ));
}
