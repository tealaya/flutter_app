import 'package:flutter/cupertino.dart';
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
        height: 300,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
        padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xcc000000),
              blurRadius: 10,
            ),
          ],
//          shape: BoxShape.circle,  //圆角，不可以和borderRadius一起使用
        ),
        child: Container(
          color: Colors.cyanAccent,
          child: Text(
            'hello word! word wordwordwordword',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              letterSpacing: 10,
            ),
          ),
        ),
      ),
    ),
  ));
}
