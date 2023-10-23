import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/controllers/upload_posts/upload_post_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/utils/custom_texts.dart';

class UploadPostScreen extends StatelessWidget {
  final UserModel user;
  const UploadPostScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    AlertdiologeWidgets alertcontroller = Get.put(AlertdiologeWidgets());
    TextEditingController textFeedController = TextEditingController();
    return Scaffold(
      body: BlocConsumer<UploadPostBloc, UploadPostState>(
        listener: (context, state) async {
          if (state.uploadPoststate.status == StateStatus.error) {
            await alertcontroller
                .warnigAlert(state.uploadPoststate.errorMessage!);
          } else if (state.uploadPoststate.status == StateStatus.success) {
            alertcontroller.warnigAlert('Post successfully added');
            textFeedController.clear();
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 150),
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 170, 188, 207)
                            .withOpacity(.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Whats on your mind?',
                          border: InputBorder.none),
                      style: const TextStyle(fontSize: 20),
                      controller: textFeedController,
                      maxLines: null,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      BlocProvider.of<UploadPostBloc>(context)
                          .add(const UploadPostEvent.pickImageFromGallery());
                    },
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          CustomTexts.labelText('pick Image'),
                          const Icon(Icons.image)
                        ],
                      ),
                    ),
                  ),
                  state.imageFile.data != null
                      ? Container(
                          height: 400,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage(
                                      File(state.imageFile.data!.path)))),
                        )
                      : const SizedBox(),
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<UploadPostBloc>(context).add(
                            UploadPostEvent.uploadPost(
                                userId: user.userid!,
                                userName: user.userName!,
                                imageFile: state.imageFile.data,
                                textFeed: textFeedController.text,
                                tags: null));
                      },
                      child: CustomTexts.labelText('Upload')),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
