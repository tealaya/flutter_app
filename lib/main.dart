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
              crossAxisCount: 4,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.5,
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
    height: 250,
    color: Colors.amberAccent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'assets/images/1.png',
          width: 100,
          height: 130,
          fit: BoxFit.fitHeight,
        ),
        Text(
          item == '1' ? '哈哈哈哈哈哈哈sdf哈哈哈' : item,
        ),
      ],
    ),
  );
}
