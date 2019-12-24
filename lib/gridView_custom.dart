import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  List<String> datas = getDataList();

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
          child: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, position) {
                return getItemContainer(datas[position]);
              },
              childCount: datas.length,
            ),
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

Widget getItemContainer(String item) {
  return Container(
    color: Colors.amberAccent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/1.png',
          height: 150,
        ),
        Text(
          '$item',
        ),
      ],
    ),
  );
}
