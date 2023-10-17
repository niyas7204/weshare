import 'package:image_picker/image_picker.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/models/post_model.dart';

abstract class UploadPostSeivice {
  Future<StateResponse<XFile>> pickImageFromGallery();
  Future<StateResponse<String>> uploadImageToStorage({
    required XFile imagefile,
  });
  Future<StateResponse<String>> uploadpostToTable({required Post post});
  Future<StateResponse> updateUser({required String postId});
}
