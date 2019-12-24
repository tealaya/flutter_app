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
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
            BoxShadow(
              color: const Color(0x80000000),
              offset: Offset(0, 6),
              blurRadius: 20,
            ),
          ],
        ),
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Transform(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              padding: EdgeInsets.all(16),
              width: 200,
              //max-width is 240
              height: 100,
              child: Text(
                '12.34',
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(1.2),
        ),
      ),
    ),
  ));
}
