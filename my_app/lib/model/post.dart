import 'package:cloud_firestore/cloud_firestore.dart';

class Post{
  String id;
  String content;
  String postAccountId;
  Timestamp? createTime;

  Post({this.id='', this.content='', this.postAccountId='', this.createTime});
}