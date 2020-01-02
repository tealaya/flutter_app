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
        body: _Body(),
      ),
    ),
  );
}

class _Body extends StatefulWidget {
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: _buildList(),
    );
  }
}

Widget _buildList() => ListView.builder(
    itemCount: 100,
//    itemExtent: 10.0, //强制高度为50.0
    itemBuilder: (BuildContext context, int index) {
      return ListTile(title: Text("$index"));
    });
