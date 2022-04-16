import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/post.dart';

class PostFirestore{
  static final _firestoreInstance = FirebaseFirestore.instance;
  static final CollectionReference posts = _firestoreInstance.collection('posts');

  static Future<dynamic> addPost(Post newPost) async{
    try {
      final CollectionReference _userPosts = _firestoreInstance.collection('users')
          .doc(newPost.postAccountId).collection('my_posts');
      var result = await posts.add({
        'content': newPost.content,
        'post_account_id': newPost.postAccountId,
        'create_time':Timestamp.now()
      });
      _userPosts.doc(result.id).set({
        'post_id': result.id,
        'create_time':Timestamp.now()
      });
      print('投稿完了');
      return true;
    } on FirebaseException catch(e){
      print('投稿エラー:$e');
      return false;
    }
  }
  static Future<List<Post>?> getPostsFromIds(List<String> ids) async{
    List<Post> postList = [];
    try {
      await Future.forEach(ids, (String id) async{
        var doc = await posts.doc(id).get();
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        Post post = Post(
          id: doc.id,
          content: data['content'],
          postAccountId: data['post_account_id'],
          createTime: data['create_time']
        );
        postList.add(post);
        });
      print('自分の投稿を取得完了');
      return postList;
    } on FirebaseException catch(e){
      print('自分の投稿取得エラー$e');
      return null;
    }
  }

  static Future<dynamic> updatePost(Post updatePost) async{
    try{
      await posts.doc(updatePost.id).update({
        'content' : updatePost.content,
        //'post_account_id':updatePost.postAccountId
      });
      print('ユーザー情報の更新完了');
      return true;
    } on FirebaseException catch(e){
      print('ユーザー情報の更新エラー: $e');
      return false;
    }
  }

  static Future<dynamic> deletePosts(String accountId) async{
    final CollectionReference _userPost = _firestoreInstance.collection('users')
    .doc(accountId).collection('my_posts');
    var snapshot = await _userPost.get();
    snapshot.docs.forEach((doc) async{
      await posts.doc(doc.id).delete();
      _userPost.doc(doc.id).delete();
    });
  }
}