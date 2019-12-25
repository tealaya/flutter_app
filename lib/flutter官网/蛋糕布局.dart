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
        body: Center(
          child: Container(
            height: 450,
            color: Colors.greenAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.amberAccent,
              child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 300,
//                  height: 400,
                    color: Colors.red,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            '标题',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blueGrey,
                          child: Text(
                            '        首行缩进两个字符，style: color,fontWeight,fontSize,fontStyle style: color,fontWeight,fontSize,fontStyle',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.45, //行高，默认貌似是1.45
                              fontSize: 20,
                              color: Colors.black38,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.greenAccent,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.green[500]),
                                  Icon(Icons.star, color: Colors.green[500]),
                                  Icon(Icons.star, color: Colors.green[500]),
                                  Icon(Icons.star, color: Colors.black26),
                                  Icon(Icons.star, color: Colors.black26),
                                ],
                              ),
                              Text(
                                '170 Reviews',
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.deepPurpleAccent,
                          child: DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 18,
                              height: 2,
                            ),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Icon(Icons.kitchen,
                                          color: Colors.green[500]),
                                      Text('PREP:'),
                                      Text('25 ma'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.timer,
                                          color: Colors.green[500]),
                                      Text('COOK:'),
                                      Text('1 hr'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.restaurant,
                                          color: Colors.green[500]),
                                      Text('FEEDS:'),
                                      Text('4-6'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        'assets/images/xx.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
