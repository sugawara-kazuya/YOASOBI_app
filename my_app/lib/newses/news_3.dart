import 'package:flutter/material.dart';

class News_3 extends StatefulWidget {
  const News_3({Key? key}) : super(key: key);

  @override
  _News_3State createState() => _News_3State();
}

class _News_3State extends State<News_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ほのぐもさんの秘密', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}
