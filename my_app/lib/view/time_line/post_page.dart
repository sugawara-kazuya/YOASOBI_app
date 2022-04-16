import 'package:flutter/material.dart';
import 'package:my_app/utils/authentication.dart';
import 'package:my_app/utils/firestore/posts.dart';
import 'package:my_app/utils/function_utils.dart';

import '../../model/post.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('YOASOBI', style: TextStyle(color: Colors.pinkAccent),),
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
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () async{
                  Post newPost = Post(
                    content: contentController.text,
                    postAccountId: Authentication.myAccount!.id,
                  );
                  var result = await PostFirestore.addPost(newPost);
                  if(result == true){
                    Navigator.pop(context);
                  }
                },
                child: Text('投稿')
            )
          ],
        ),
      ),
    );
  }
}