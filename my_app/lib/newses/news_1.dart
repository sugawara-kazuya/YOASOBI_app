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
        title: Text('AYASEさんの食べられる野菜', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),

    );
  }
}
