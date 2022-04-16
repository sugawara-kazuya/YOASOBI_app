import 'package:flutter/material.dart';
import 'package:my_app/model/account.dart';
//import 'package:my_app/model/post.dart';
import 'package:my_app/utils/authentication.dart';
import 'package:my_app/view/time_line/post_page.dart';
import 'package:my_app/view/time_line/time_line_page.dart';

import '../../model/post.dart';
import '../../utils/firestore/posts.dart';

class EditPostPage extends StatefulWidget {
  const EditPostPage({Key? key}) : super(key: key);

  @override
  _EditPostPageState createState() => _EditPostPageState();
}

class _EditPostPageState extends State<EditPostPage> {
  Post? myPost = Authentication.myPost;

  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    contentController = TextEditingController(text: myPost?.content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('投稿更新', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(

          children: [
            TextField(
              controller: contentController,
              decoration: InputDecoration(hintText: '更新してください'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async{
                  if(contentController.text.isNotEmpty){
                    Post updatePost = Post(
                      content: contentController.text,
                    );
                    Authentication.myPost = updatePost;
                    var result = await PostFirestore.updatePost(updatePost);
                    if(result == true){
                      Navigator.pop(context, true);
                    }
                  }
                },
                child: Text('投稿更新')
            ),
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: (){
                  PostFirestore.deletePosts(myPost!.id);
                  while(Navigator.canPop(context)){
                    Navigator.pop(context);
                  }
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => TimeLinePage()
                  ));
                },
                child: Text('投稿削除')
            ),
          ],
        ),
      ),
    );
  }
}
