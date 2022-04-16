
import 'package:cloud_firestore/cloud_firestore.dart';

class Account{
  String id;
  String name;
  String imagePath;
  String selfIntroduction;
  String userId;
  Timestamp? createTime;
  Timestamp? updatedTime;

  Account({this.id='', this.name='', this.imagePath='',
    this.selfIntroduction='', this.userId='', this.createTime, this.updatedTime
  });
}