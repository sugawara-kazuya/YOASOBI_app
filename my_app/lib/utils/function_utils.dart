import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class FunctionUtils{
  static Future<dynamic> getImageFromGallery() async{
    ImagePicker picker = ImagePicker();
    //final ImagePicker _picker = ImagePicker();
    //final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
    //if(pickedFile != null && pickedFile.path != null){
    //  setState(() {
    //    image = File(pickedFile.path);
    //  });
    }

  static Future<String> uploadImage(String uid, File image) async{
    final FirebaseStorage storageInstance = FirebaseStorage.instance;
    final Reference ref = storageInstance.ref();
    await ref.child(uid).putFile(image);
    String downloadUrl = await storageInstance.ref(uid).getDownloadURL();
    print('image_path $downloadUrl');
    return downloadUrl;
  }
}