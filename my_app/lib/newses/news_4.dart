import 'package:flutter/material.dart';

class News_4 extends StatefulWidget {
  const News_4({Key? key}) : super(key: key);

  @override
  _News_4State createState() => _News_4State();
}

class _News_4State extends State<News_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('デビュー曲　夜にかけるの裏側', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}

