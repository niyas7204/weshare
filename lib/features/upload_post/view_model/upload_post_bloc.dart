import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/features/upload_post/model/repository/upload_post.dart';
import 'package:weshare/features/user/model/data_model/compound_user_data_model.dart';

part 'upload_post_event.dart';
part 'upload_post_state.dart';
part 'upload_post_bloc.freezed.dart';

class UploadPostBloc extends Bloc<UploadPostEvent, UploadPostState> {
  final UploadPostSeivice uploadPostSeivice;
  UploadPostBloc(this.uploadPostSeivice) : super(UploadPostState.initial()) {
    //event to took image from gallery
    on<_pickImageFromGallery>((event, emit) async {
      emit(state.copyWith(
          imageFile: StateResponse.loading(),
          uploadPoststate: StateResponse.intial()));
      final result = await uploadPostSeivice.pickImageFromGallery();

      if (result.status == StateStatus.success) {
        emit(state.copyWith(imageFile: StateResponse.success(result.data)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            imageFile: StateResponse.error(result.errorMessage)));
      }
    });
    //upload post to table including upload image to storage
    on<_uploadpost>(
      (event, emit) async {
        //validating that both inputs are not empty
        if (event.imageFile == null && event.textFeed!.isEmpty) {
          emit(state.copyWith(
              uploadPoststate:
                  StateResponse.error('Pleas add any Data to upload !')));
        } //if inputs are not empty start upload task
        else {
          emit(state.copyWith(uploadPoststate: StateResponse.loading()));

          //variable to store string url
          String? image;

          //if image input is not null then upload image to storage
          if (event.imageFile != null) {
            final result = await uploadPostSeivice.uploadImageToStorage(
                imagefile: event.imageFile!);

            if (result.status == StateStatus.success) {
              image = result.data;
            } else if (result.status == StateStatus.error) {
              emit(state.copyWith(
                  uploadPoststate: StateResponse.error('upload failed.!')));
            }
          } else {
            image = null;
          }
          String uid = const Uuid().v1().toString();

          final PostsBySenderid post = PostsBySenderid(
              senderName: event.userName,
              senderId: event.userId,
              postId: uid,
              textFeed: event.textFeed,
              imageFeed: image);
          final response = await uploadPostSeivice.uploadpostToTable(
              post: post, tags: event.tags!);
          if (response.status == StateStatus.success) {
            emit(state.copyWith(
                uploadPoststate: StateResponse.success(response.data),
                imageFile: StateResponse.success(null)));
          } else if (response.status == StateStatus.error) {
            emit(state.copyWith(
                uploadPoststate: StateResponse.error('upload failed.!')));
          }
        }
      },
    );
  }
}
