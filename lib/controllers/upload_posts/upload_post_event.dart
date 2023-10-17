part of 'upload_post_bloc.dart';

@freezed
class UploadPostEvent with _$UploadPostEvent {
  const factory UploadPostEvent.pickImageFromGallery() = _pickImageFromGallery;
  const factory UploadPostEvent.uploadPost(
      {required String userId,
      required String userName,
      required XFile? imageFile,
      required String? textFeed,
      required List<String>? tags}) = _uploadpost;
}
