import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';

import 'package:weshare/controllers/search_account_bloc/search_account_bloc.dart';
import 'package:weshare/controllers/upload_posts/upload_post_bloc.dart';
import 'package:weshare/core/helpers/debouncer.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/utils/custom_texts.dart';

class UploadPostScreen extends StatelessWidget {
  final UserModel user;
  const UploadPostScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    List<String> tags = [];
    final debouncer = Debouncer(milliseconds: 1000);

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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          const Icon(Icons.image),
                        ],
                      ),
                    ),
                  ),
                  CustomTexts.labelText('Tag friends'),
                  BlocConsumer<SearchAccountBloc, SearchAccountState>(
                    listener: (context, searchlistenState) {
                      if (searchlistenState.searchResult.status ==
                          StateStatus.success) {}
                    },
                    builder: (context, searchState) {
                      List<UserModel> users = [];
                      if (searchState.searchResult.status ==
                          StateStatus.success) {
                        users = searchState.searchResult.data!.userlist!;
                      }
                      return Autocomplete(
                        optionsBuilder: (textEditingValue) async {
                          await debouncer.run(() {
                            BlocProvider.of<SearchAccountBloc>(context).add(
                                SearchAccountEvent.searchAccount(
                                    value: textEditingValue.text,
                                    userId: user.userid!));
                          });

                          return users;
                        },
                        onSelected: (option) {
                          tags.add(option.userid!);
                        },
                        displayStringForOption: (option) {
                          return option.userName!;
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Material(
                            child: searchState.searchResult.status ==
                                    StateStatus.success
                                ? ListView.builder(
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        tags.add(searchState.searchResult.data!
                                            .userlist![index].userid!);
                                      },
                                      title: Text(searchState.searchResult.data!
                                          .userlist![index].userName!),
                                    ),
                                    itemCount: searchState
                                        .searchResult.data!.userlist!.length,
                                  )
                                : const CircularProgressIndicator(),
                          );
                        },
                      );
                    },
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
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<UploadPostBloc>(context).add(
                              UploadPostEvent.uploadPost(
                                  userId: user.userid!,
                                  userName: user.userName!,
                                  imageFile: state.imageFile.data,
                                  textFeed: textFeedController.text,
                                  tags: tags));
                        },
                        child: CustomTexts.labelText('Upload')),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
