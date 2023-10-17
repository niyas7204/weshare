import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/repository/upload_image.dart';
import 'package:weshare/models/post_model.dart';

part 'upload_post_event.dart';
part 'upload_post_state.dart';
part 'upload_post_bloc.freezed.dart';

class UploadPostBloc extends Bloc<UploadPostEvent, UploadPostState> {
  final UploadPostSeivice uploadPostSeivice;
  UploadPostBloc(this.uploadPostSeivice) : super(UploadPostState.initial()) {
    on<_pickImageFromGallery>((event, emit) async {
      final result = await uploadPostSeivice.pickImageFromGallery();
      emit(state.copyWith(
          imageFile: StateResponse.loading(),
          uploadPoststate: StateResponse.intial()));
      if (result.status == StateStatus.success) {
        emit(state.copyWith(imageFile: StateResponse.success(result.data)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            imageFile: StateResponse.error(result.errorMessage)));
      }
    });
    on<_uploadpost>(
      (event, emit) async {
        if (event.imageFile == null && event.textFeed!.isEmpty) {
          log('hello');
          emit(state.copyWith(
              uploadPoststate:
                  StateResponse.error('Pleas add any Data to upload !')));
        } else {
          emit(state.copyWith(uploadPoststate: StateResponse.loading()));
          String? image;
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
          String uid = Uuid().v1().toString();

          final Post post = Post(
              senderName: event.userName,
              senderId: event.userId,
              postId: uid,
              likes: [],
              tags: event.tags,
              textFeed: event.textFeed,
              imageFeed: image);
          final response =
              await uploadPostSeivice.uploadpostToTable(post: post);
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
