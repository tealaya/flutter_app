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
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Container(
              height: 5.0,
              child: Text('sdf'),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: double.infinity, //宽度尽可能大
                  minHeight: 50.0 //最小高度为50像素
                  ),
              child: Container(
                height: 5.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: Container(
                height: 5.0,
                child: Text('sdf'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
