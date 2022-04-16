import 'package:flutter/material.dart';
import 'package:my_app/view/time_line/news_page.dart';
import 'package:my_app/view/time_line/post_page.dart';
import 'package:my_app/view/time_line/time_line_page.dart';

import 'account/account_page.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int selectedIndex = 0;
  List<Widget> pageList = [TimeLinePage(),  NewsPage(), AccountPage(),];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label:''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border,color: Colors.black),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity,color: Colors.black),
              label: ''
          ),


        ],
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'a',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()));
        },
        child: Icon(Icons.chat_bubble_outline),
      ),
    );
  }
}
