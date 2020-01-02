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
//      color: Colors.red,
      child: _buildList(),
    );
  }
}

Widget _buildList() {
  Widget divider1 = Divider(color: Colors.blue);
  Widget divider2 = Divider(color: Colors.green);

  return ListView.separated(
    itemCount: 100,
    //列表项构造器
    itemBuilder: (BuildContext context, int index) {
      return ListTile(title: Text("$index"));
    },
    //分割器构造器
    separatorBuilder: (BuildContext context, int index) {
      return index % 2 == 0 ? divider1 : divider2;
    },
  );
}
