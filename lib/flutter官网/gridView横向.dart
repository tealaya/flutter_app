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
        body: Container(
          height: 200,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            mainAxisSpacing: 30.0,
            padding: EdgeInsets.all(20.0),
            crossAxisCount: 1,
            childAspectRatio: 1,
            children: getWidgetList(),
          ),
        ),
      ),
    ),
  );
}

List<String> getDataList() {
  List<String> list = [];
  for (int i = 0; i < 10; i++) {
    list.add(i.toString());
  }
  return list;
}

List<Widget> getWidgetList() {
  return getDataList().map((item) => getItemContainer(item)).toList();
}

Widget getItemContainer(String item) {
  return Container(
    height: 150, //不起作用
    alignment: Alignment.center,
    color: Colors.amberAccent,
    child: Column(
      children: <Widget>[
        Image.asset(
          'assets/images/1.png',
          height: 100,
        ),
        Text(
          '$item',
        ),
      ],
    ),
  );
}
