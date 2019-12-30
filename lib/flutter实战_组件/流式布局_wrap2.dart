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
      home: FormTestRoute(),
    ),
  );
}

class FormTestRoute extends StatefulWidget {
  @override
  _FormTestRouteState createState() => new _FormTestRouteState();
}

class _FormTestRouteState extends State<FormTestRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Test"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'HisddddddsdHisddddddsHisddddddsddddddddddddddddddddddddddddddddddddddddddddddHisddddddsddddddddddddddddddddddddddddddddddddddddddddd',
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Wrap(
//            direction:Axis.vertical,
            spacing: 20, // 主轴(水平)方向间距
            runSpacing: 20, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.start, //沿主轴方向居中
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: Colors.indigoAccent,
                child: new Chip(
                  avatar: new CircleAvatar(
                      backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(
                    backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('Laurens'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
