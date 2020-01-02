import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
        body: _Body(),
      ),
    ),
  );
}

class _Body extends StatefulWidget {
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.red,
      child: InfiniteListView(),
    );
  }
}

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => new _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(title: Text("商品列表")),
        Expanded(
          child: ListView.separated(
            itemCount: _words.length,
            itemBuilder: (context, index) {
              print(2);
              //如果到了表尾
              if (_words[index] == loadingTag) {
                print(3);
                //不足100条，继续获取数据
                if (_words.length - 1 < 60) {
                  //获取数据
                  _retrieveData();
                  //加载时显示loading
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(strokeWidth: 2.0)),
                  );
                } else {
                  //已经加载了100条数据，不再获取数据。
                  return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "没有更多了",
                        style: TextStyle(color: Colors.grey),
                      ));
                }
              }

              print('22222222222. ${_words.length}');
              //显示单词列表项
              return ListTile(title: Text('$index . ${_words[index]}'));
            },
            separatorBuilder: (context, index) => Divider(height: .0),
          ),
        ),
      ],
    );
  }

  void _retrieveData() {
    print(0);
    Future.delayed(Duration(seconds: 10)).then((e) {
      print(1);
      _words.insertAll(
          _words.length - 1,
          //每次生成20个单词
          generateWordPairs().take(15).map((e) => e.asPascalCase).toList());
      print('111. ${_words.length}');
      setState(() {
        //重新构建列表
      });
    });
  }
}
