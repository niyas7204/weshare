import 'dart:developer';
import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weshare/graphql/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/features/user/model/repository/upload_post.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:weshare/models/compound_user_data_model.dart';

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
  Future<StateResponse<String>> uploadpostToTable(
      {required PostsBySenderid post, required List<String> tags}) async {
    List tagedUsers = [];
    if (tags.isNotEmpty) {
      for (var tag in tags) {
        var a = {"user_Id: $tag"};
        tagedUsers.add(a);
      }
    }
    log('post ${post.senderName} ${post.senderId}  ${post.postId}');
    final String mutation = '''mutation MyMutation {
  insert_post(objects: {senderId: "${post.senderId}", senderName: "${post.senderName}", postId: "${post.postId}", imageFeed: "${post.imageFeed}",
   textFeed: "${post.textFeed}", post_tags:{data:"$tagedUsers"} }) {
    returning {
      postId
      senderId
      senderName
    }
  }
}
''';

    try {
      final mutationOption = MutationOptions(document: gql(mutation));

      QueryResult result =
          await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);

      final newpost = PostsBySenderid.fromMap(
          result.data!["insert_post"]["returning"][0] as Map<String, dynamic>);

      return StateResponse.success(newpost.postId);
    } catch (e) {
      return StateResponse.error('Failed to upload image.');
    }
  }
}
