import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weshare/constants/sizes.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/utils/custom_texts.dart';

class PostCard extends StatelessWidget {
  final List<String> followings;
  final PostsBySenderid post;
  final UserModel user;

  const PostCard(
      {super.key,
      required this.post,
      required this.user,
      required this.followings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        user.userid != post.senderId
            ? Padding(
                padding: const EdgeInsets.all(12),
                child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            user.profileImage != null
                                ? CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(user.profileImage!),
                                  )
                                : const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.blueGrey,
                                    child: Icon(Icons.person_2),
                                  ),
                            SpaceSized.space10w,
                            CustomTexts.nameText(post.senderName),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<UserprofileBloc>(context).add(
                                  UserprofileEvent.followAnAccount(
                                      acountId: post.senderId,
                                      userId: user.userid!,
                                      following: followings));
                            },
                            child: Text(followings.contains(post.senderId)
                                ? 'unfollow'
                                : 'follow'))
                      ],
                    )),
              )
            : const SizedBox(),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: post.textFeed != null
              ? post.textFeed!.isNotEmpty
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomTexts.text15(post.textFeed!),
                      ),
                    )
                  : const SizedBox()
              : const SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: SizedBox(
            child: post.imageFeed != null
                ? Image.network(post.imageFeed!)
                : const SizedBox(),
          ),
        )
      ],
    );
  }
}
