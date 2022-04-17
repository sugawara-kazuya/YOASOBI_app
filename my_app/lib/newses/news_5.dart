import 'package:flutter/material.dart';

class News_5 extends StatefulWidget {
  const News_5({Key? key}) : super(key: key);

  @override
  _News_5State createState() => _News_5State();
}

class _News_5State extends State<News_5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ayaseさんの好きな野菜・嫌いな野菜', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              //width: double.infinity,
              //alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('【Ayaseさんの好きな野菜】',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 5,),
                  Text('  チーズ',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('【Ayaseさんの嫌いな野菜】',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 5,),
                  Text('トマト、きゅうり、ブロッコリー、もやし',style: TextStyle(fontSize: 20,),),
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
