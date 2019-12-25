import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
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
              Text(
                "Hello world! I'm Jack. " * 20,
                textAlign: TextAlign.justify,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28.0,
                  height: 1.8,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Home: "),
                    TextSpan(
                      text: "https://flutterchina.club",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              DefaultTextStyle(
                //1.设置文本默认样式
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.start,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("hello world"),
                    Text("I am Jack"),
                    Text(
                      "I am Jack",
                      style: TextStyle(
                          inherit: false, //2.不继承默认样式
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
