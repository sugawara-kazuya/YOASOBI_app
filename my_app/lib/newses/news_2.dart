import 'package:flutter/material.dart';

class News_2 extends StatefulWidget {
  const News_2({Key? key}) : super(key: key);

  @override
  _News_2State createState() => _News_2State();
}

class _News_2State extends State<News_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ボーカルikuraちゃん!', style: TextStyle(color: Colors.pinkAccent),),
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
                  Text('幾田りらさん',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('2000年9月25日　シカゴ生まれ！',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('2016年～ アコースティックセッションユニット「ぷらそにか」',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('2018年～ 音楽ユニット「YOASOBI」結成',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('日本のシンガーソングライター。 「小説を音楽にする」ユニット「YOASOBI」のメンバー（ikura名義）としても活動している。2021年8月13日までは、アコースティックセッションユニット「ぷらそにか」のメンバーとしても活動していた。',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('ライラックの花というのはどのようなものかというと、フランス語で「Lilas」と書きヨーロッパ原産の花となっており花言葉は「思い出」「友情」だそうです。',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('音楽ユニット「YOASOBI」では「ikura」という名前で活動しているようなのですが、それは「いくたりら」という名前から最初と最後の文字を取って「いくら」→「ikura」と命名',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('ちなみに海産物のイクラはあまり好きではないらしいのでそことの関連性はなさそうです。',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('最近のラジオで判明したのですが、「こころ」ちゃんという名前が最初につけられていたみたいで、ギリギリで変更になったみたいです！',style: TextStyle(fontSize: 20,),),
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
