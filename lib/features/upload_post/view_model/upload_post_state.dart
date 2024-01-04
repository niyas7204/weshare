part of 'upload_post_bloc.dart';

@freezed
class UploadPostState with _$UploadPostState {
  const factory UploadPostState(
      {required StateResponse<XFile?> imageFile,
      required StateResponse<String> uploadPoststate}) = uploadPostState;
  factory UploadPostState.initial() => uploadPostState(
      imageFile: StateResponse.intial(),
      uploadPoststate: StateResponse.intial());
}
