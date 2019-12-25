import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('title'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RandomWordsWidget(),
              RandomWordsWidget(),
              RandomWordsWidget(),
              RandomWordsWidget(),
              RandomWordsWidget(),
              RandomWordsWidget(),
              Image.asset('assets/images/1.png'),
              RandomWordsWidget(),
              DecoratedBox(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets/images/1.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    debugPrint('11111111');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}
