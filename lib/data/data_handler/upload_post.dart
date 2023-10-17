import 'dart:developer';
import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/upload_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:weshare/models/post_model.dart';

class UploadPostImplimentaion implements UploadPostSeivice {
  @override
  //pick image frim gallery
  Future<StateResponse<XFile>> pickImageFromGallery() async {
    XFile? imageFile;
    try {
      final ImagePicker imagePicker = ImagePicker();
      imageFile = await imagePicker.pickImage(source: ImageSource.gallery);
      return StateResponse.success(imageFile);
    } catch (e) {
      return StateResponse.error('failed to fecth image');
    }
  }

//upload image to storage
  @override
  Future<StateResponse<String>> uploadImageToStorage(
      {required XFile imagefile}) async {
    try {
      Reference strorageReference = FirebaseStorage.instance
          .ref()
          .child('weshare/post/${DateTime.now()}.png');
      UploadTask uploadTask = strorageReference.putFile(File(imagefile.path));
      TaskSnapshot taskSnapshot = await uploadTask;
      String imageUrl = await taskSnapshot.ref.getDownloadURL();
      return StateResponse.success(imageUrl);
    } catch (e) {
      log('img st$e');
      return StateResponse.error('failed to upload image ');
    }
  }

//upload post to table
  @override
  Future<StateResponse<String>> uploadpostToTable({required Post post}) async {
    log('post ${post.senderName} ${post.senderId}  ${post.postId}');
    final String mutation = '''mutation MyMutation {
  insert_post(objects: {senderId: "${post.senderId}", senderName: "${post.senderName}", postId: "${post.postId}",tags:${post.tags},likes: ${post.likes}, imageFeed: "${post.imageFeed}", textFeed: "${post.textFeed}"}) {
    returning {
      postId
      senderId
      senderName
    }
  }
}
''';

    try {
      log('up try');
      final mutationOption = MutationOptions(document: gql(mutation));
      log('up a op');
      QueryResult result =
          await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);
      log('up re');

      log(result.toString());
      final newpost = Post.fromMap(
          result.data!["insert_post"]["returning"][0] as Map<String, dynamic>);

      return StateResponse.success(newpost.postId);
    } catch (e) {
      log('img ql$e');
      return StateResponse.error('Failed to upload image.');
    }
  }

  @override
  Future<StateResponse> updateUser({required String postId}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
