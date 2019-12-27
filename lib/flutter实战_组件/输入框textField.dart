import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent,
        primaryColor: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter layout demo',
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextTest(),
            ],
          ),
        ),
      ),
    ),
  );
}

class TextTest extends StatefulWidget {
  @override
  _TextTestState createState() => _TextTestState();
}

class _TextTestState extends State<TextTest> {
  //定义一个controller
  TextEditingController _unameController = TextEditingController();
  TextEditingController _unameController4 = TextEditingController();
  TextEditingController _selectionController =
      TextEditingController(text: 'hello world!');

  String _userName = '';

  @override
  void initState() {
    _unameController4.addListener(() {
      print(_unameController4.text);
      setState(() {});
    });

    _selectionController.addListener(() {
//      _selectionController.selection=TextSelection(
//          baseOffset: 2,
//          extentOffset: _selectionController.text.length
//      );
      print(_selectionController.text);
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(_userName),
        Text(_unameController.text),
        Text(_unameController4.text),
        Text(_selectionController.text),
        TextField(
//                autofocus: true,
          decoration: InputDecoration(
            labelText: "用户名",
            hintText: "用户名或邮箱",
            prefixIcon: Icon(Icons.person),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "密码",
            hintText: "您的登录密码",
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
        ),
        TextField(
//                autofocus: true,
          decoration: InputDecoration(
            labelText: "测试用户名2",
            hintText: "测试用户名2",
            prefixIcon: Icon(Icons.person),
          ),
          onChanged: (v) {
            setState(() {
              _userName = v;
            });
            print('_userName：$_userName');
            print('change的时候：$v');
          },
        ),
        TextField(
          controller: _unameController, //设置controller
          decoration: InputDecoration(
            labelText: "测试用户名3",
            hintText: "测试用户名3",
            prefixIcon: Icon(Icons.person),
          ),
          onChanged: (v) {
            setState(() {});
            print(_unameController.text);
            print(_unameController.text.length);
          },
        ),
        TextField(
          controller: _unameController4, //设置controller
          decoration: InputDecoration(
            labelText: "测试用户名4",
            hintText: "测试用户名4",
            prefixIcon: Icon(Icons.person),
          ),
        ),
        TextField(
          controller: _selectionController, //设置controller
          decoration: InputDecoration(
            labelText: "测试用户名5",
            hintText: "测试用户名5",
            prefixIcon: Icon(Icons.person),
          ),
        ),
      ],
    );
  }
}
