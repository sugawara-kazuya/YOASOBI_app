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
        title: Text('ikuraちゃんの歌', style: TextStyle(color: Colors.pinkAccent),),
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
                  Text('ikuraちゃんはの本名は幾多りらさんといいます。実はもともとは「こころ」ちゃんという名前だったみたいです！',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('',style: TextStyle(fontSize: 20,),),
                  SizedBox(height: 20,),
                  Text('',style: TextStyle(fontSize: 20,),),
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
