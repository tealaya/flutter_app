import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
        body: _buildStack(),
      ),
    ),
  );
}

Widget _buildStack() => Stack(
      alignment: Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/1.png'),
          radius: 200,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
