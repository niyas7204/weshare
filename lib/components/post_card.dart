import 'package:flutter/material.dart';

import 'package:weshare/constants/sizes.dart';
import 'package:weshare/models/post_model.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/utils/custom_texts.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final UserModel user;
  const PostCard({super.key, required this.post, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                          'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg'),
                    ),
                    SpaceSized.space10w,
                    CustomTexts.nameText(post.senderName),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: CustomTexts.text15(user.following != null
                        ? user.following!.contains(post.senderId)
                            ? 'unfollow'
                            : 'follow'
                        : 'follow'))
              ],
            ),
          ),
        ),
        SpaceSized.space5H,
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: post.textFeed != null
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
