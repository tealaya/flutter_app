import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: '任务管理器title',
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: MyHomePage(),
    ),
  );
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class TabTitle {
  String title;
  int index;

  TabTitle(this.title, this.index);
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController mController;
  List<TabTitle> tabList;

  @override
  void initState() {
    super.initState();
    initTabData();
    mController = TabController(
      length: tabList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mController.dispose();
  }

  initTabData() {
    tabList = [
      new TabTitle('推荐', 10),
      new TabTitle('热点', 0),
      new TabTitle('社会', 1),
      new TabTitle('娱乐', 2),
      new TabTitle('体育', 3),
      new TabTitle('美文', 4),
      new TabTitle('科技', 5),
      new TabTitle('财经', 6),
      new TabTitle('时尚', 7)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        backgroundColor: Color(0xffd43d3d),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.all_inclusive),
        backgroundColor: Color(0xffd43d3d),
        elevation: 2.0,
        highlightElevation: 2.0,
        onPressed: () {},
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: new Color(0xfff4f5f6),
            height: 38.0,
            child: TabBar(
              isScrollable: true,
              //是否可以滚动
              controller: mController,
              labelColor: Colors.red,
              unselectedLabelColor: Color(0xff666666),
              labelStyle: TextStyle(fontSize: 16.0),
              tabs: tabList.map((item) {
                return Tab(
                  text: item.title,
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: tabList.map((item) {
                return Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          Text(item.title),
                          Text(item.title),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
