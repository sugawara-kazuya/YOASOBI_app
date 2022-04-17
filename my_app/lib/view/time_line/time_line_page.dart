import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:my_app/model/account.dart';
import 'package:my_app/model/post.dart';
import 'package:my_app/utils/firestore/posts.dart';
import 'package:my_app/utils/firestore/users.dart';
import 'package:my_app/view/time_line/post_page.dart';

import 'edit_post_page.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key? key}) : super(key: key);

  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('YOASOBI', style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.black,
        elevation: 5,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: PostFirestore.posts.orderBy('create_time', descending: true).snapshots(),
        builder: (context, postSnapshot) {
          if(postSnapshot.hasData){
            List<String> postAccountIds = [];
            postSnapshot.data!.docs.forEach((doc) { 
              Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
              if(!postAccountIds.contains(data['post_account_id'])){
                postAccountIds.add(data['post_account_id']);
              }
            });
            return FutureBuilder<Map<String, Account>?>(
              future: UserFirestore.getPostUserMap(postAccountIds),
              builder: (context, userSnapshot) {
                if(userSnapshot.hasData && userSnapshot.connectionState == ConnectionState.done){
                  return ListView.builder(
                    itemCount: postSnapshot.data!.docs.length,
                    itemBuilder: (context, index){
                      Map<String, dynamic> data = postSnapshot.data!.docs[index].data() as Map<String, dynamic>;
                      Post post = Post(
                        id: postSnapshot.data!.docs[index].id,
                        content: data['content'],
                        postAccountId: data['post_account_id'],
                        createTime: data['create_time']
                      );
                      Account postAccount = userSnapshot.data![post.postAccountId]!;
                      return Container(
                        decoration: BoxDecoration(
                            border: index == 0 ? Border(
                              top: BorderSide(color: Colors.grey, width: 0),
                              bottom: BorderSide(color: Colors.grey, width: 0),
                            ) : Border(bottom: BorderSide(color: Colors.grey, width: 0),)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              foregroundImage: NetworkImage(postAccount.imagePath),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(postAccount.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text('@${postAccount.userId}', style: TextStyle(color: Colors.grey),),
                                            ],

                                          ),
                                          //Text(DateFormat('yy/M/d HH:mm').format(post.createTime!.toDate()))
                                        ],
                                      ),
                                      //SizedBox(height: 10,),
                                      Text(post.content),
                                      SizedBox(height: 10),

                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(DateFormat('yyyy/M/d HH:mm').format(post.createTime!.toDate())),
                                              ],
                                            ),

                                          ],
                                        ),

                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                } else{
                  return Container();
                }
              }
            );
          } else{
            return Container();
          }

        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()));
        },
        child: Icon(Icons.chat_bubble_outline),
      ),
    );
  }
}
