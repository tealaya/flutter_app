import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.greenAccent,
        primaryColor: Colors.red,
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
  TextEditingController _unameCtr = new TextEditingController();

  @override
  void initState() {
//    _unameCtr.text = 'haha';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(_unameCtr.text),
        TextField(
          //文本控制器
          controller: _unameCtr,
//          keyboardType: TextInputType.text,
//          keyboardType: TextInputType.phone,
//          keyboardType: TextInputType.datetime,
//          keyboardType: TextInputType.emailAddress,
//          keyboardType: TextInputType.url,

          //是否禁用
//          enabled: false,
          //自动聚焦
//          autofocus: true,
          //光标颜色
          cursorColor: Colors.red,
          //光标宽度
          cursorWidth: 10,
          //光标圆角
          cursorRadius: Radius.circular(10),
          //是否隐藏文本
//          obscureText: true,
          //文本水平对齐方式
//            textAlign: TextAlign.center,
          //键盘输入类型--多行模式
//          keyboardType: TextInputType.multiline,
          //最大行数
//          maxLines: null,
          //最大输入数
          maxLength: 1000,
          //超过最大输入时是否不让输入
          maxLengthEnforced: false,
          onChanged: (v) {
            //输入内容修改时
            setState(() {});
          },
          onSubmitted: (v) {
            //点击键盘的完成按钮的时候
            print(v);
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            prefixIcon: Icon(Icons.person),
            labelText: "用户名",
            hintText: "请输入用户名",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 13.0,
            ),
            border: OutlineInputBorder(),
            // 未获得焦点下划线设为灰色
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow),
            ),
            //获得焦点下划线设为蓝色
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
          style: TextStyle(
            fontSize: 20, // 文字大小
          ),
        ),
      ],
    );
  }
}
