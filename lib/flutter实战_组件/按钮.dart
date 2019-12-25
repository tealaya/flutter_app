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
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("禁用按钮"),
              ),
              RaisedButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              OutlineButton(
                child: Text("normal"),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              RaisedButton.icon(
                icon: Icon(Icons.send),
                label: Text("发送"),
                onPressed: () {},
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text("添加"),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(Icons.info),
                label: Text("详情"),
                onPressed: () {},
              ),
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
              ),
              RaisedButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                //正常状态下的阴影
                elevation: 2.0,
                //按下时的阴影
                highlightElevation: 8.0,
                // 禁用时的阴影
                disabledElevation: 0.0,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
