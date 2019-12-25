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
          child: GridView.builder(
            //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
              crossAxisCount: 3,
              //纵轴间距
              mainAxisSpacing: 20.0,
              //横轴间距
              crossAxisSpacing: 10.0,
              //子组件宽高长度比例
              childAspectRatio: 1.0,
            ),
            itemCount: datas.length,
            itemBuilder: (BuildContext context, int index) {
              //Widget Function(BuildContext context, int index)
              return getItemContainer(datas[index]);
            },
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
