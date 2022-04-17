import 'package:flutter/material.dart';
import 'package:my_app/newses/news_1.dart';
import 'package:my_app/newses/news_2.dart';
import 'package:my_app/newses/news_3.dart';

import '../../newses/news_4.dart';
import '../../newses/news_5.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('YOASOBI豆知識', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: <Widget>[
          // *** 追加する部分 ***
          // CardとListTileを使い、簡単に整ったUIを作成
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_1()));
            },
            child: Card(
              child: ListTile(
                title: Text('YOASOBIとは？？'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_2()));
            },
            child: Card(
              child: ListTile(
                title: Text('ボーカルikuraちゃん！'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_3()));
            },
            child: Card(
              child: ListTile(
                title: Text('バンドメンバー紹介！'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_5()));
            },
            child: Card(
              child: ListTile(
                title: Text('Ayaseさんの好きな野菜・嫌いな野菜'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News_4()));
            },
            child: Card(
              child: ListTile(
                title: Text('デビュー曲　夜にかけるの裏側'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
