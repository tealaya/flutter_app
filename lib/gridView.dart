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
          child: GridView.count(
            //水平子Widget之间间距
            crossAxisSpacing: 10.0,
            //垂直子Widget之间间距
            mainAxisSpacing: 30.0,
            //GridView内边距
            padding: EdgeInsets.all(20.0),
            //一行的Widget数量
            crossAxisCount: 3,
            //子Widget宽高比例
            childAspectRatio: 1,
            //子Widget列表
            children: getWidgetList(),
          ),
        ),
      ),
    ),
  );
}

List<String> getDataList() {
  List<String> list = [];
  for (int i = 0; i < 100; i++) {
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
