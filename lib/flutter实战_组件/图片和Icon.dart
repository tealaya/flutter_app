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
              Image(
                image: AssetImage("assets/images/avatar.png"),
                width: 100.0,
              ),
              Image.asset(
                "assets/images/avatar.png",
                width: 100.0,
              ),
              Image(
                image: NetworkImage(
                    "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
                width: 100.0,
              ),
              Image.network(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                width: 100.0,
              ),
              Container(
                width: 400,
                height: 400,
                child: Image(
                  image: AssetImage("assets/images/6.png"),
                  width: 100.0,
                  height: 200.0,
                  repeat: ImageRepeat.repeat,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                '\uE90D',
                style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.red,
                ),
              ),
              Icon(
                Icons.accessible,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
