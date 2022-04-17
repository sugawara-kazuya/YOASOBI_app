import 'package:flutter/material.dart';

class News_1 extends StatefulWidget {
  const News_1({Key? key}) : super(key: key);

  @override
  _News_1State createState() => _News_1State();
}

class _News_1State extends State<News_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('YOASOBIとは？？', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                  children: [
                    Text('YOASOBI（ヨアソビ）は、コンポーザーであるAyaseさんとシンガーソングライターのikuraさんによる音楽ユニットです。',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('Ayaseさんは音楽合成ソフト・VOCALOIDで楽曲制作を行うボカロPとしても活動しており、Hey! Say! JUMP!やLiSAとUruのコラボ曲などの楽曲提供も手掛けています。',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('ikuraさんはシンガーソングライター『幾田りら』名義でも活動。アコースティックセッションユニット『ぷらそにか』のメンバーの1人でもあり、カバー曲を中心とした動画をYouTubeへ投稿していました。',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('ソニーミュージックが運用する小説・イラスト投稿サイト『monogatary.com』で行われた、大賞に輝いた小説を楽曲化するコンテスト『モノコン2019』をきっかけにYOASOBIが結成。以降はデビュー曲「夜に駆ける」を初めとした数々の楽曲を発表しています。',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('小説を音楽にする斬新な制作スタイルは、邦楽において新たな一石を投じるものとなり、現在に至るまで多くの人から支持されています。',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),
                    Text('',style: TextStyle(fontSize: 20,),),
                    SizedBox(height: 20,),




                  ],

                ),
            ),
            ),
        ),
      ),
      );
  }
}
