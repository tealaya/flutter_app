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

Widget _buildList() => ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        const Text('I\'m dedicating every day to you'),
        const Text('Domestic life was never quite my style'),
        const Text('When you smile, you knock me out, I fall apart'),
        const Text('And I thought I was so smart'),
      ],
    );
