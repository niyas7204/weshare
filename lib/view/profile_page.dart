import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weshare/components/post_card.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';

import 'package:weshare/utils/custom_texts.dart';
import 'package:weshare/view/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTexts.header1('WeShare'),
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<UserAuthenticationBloc>(context)
                    .add(const UserAuthenticationEvent.userLogout());
              },
              icon: const Icon(
                Icons.logout_outlined,
                size: 30,
              )),
        ],
      ),
      body: BlocListener<UserAuthenticationBloc, UserAuthenticationState>(
        listener: (context, state) {
          if (state.userLogout.status == StateStatus.success) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => false,
            );
          }
        },
        child: BlocConsumer<UserprofileBloc, UserprofileState>(
          listener: (context, state) {},
          builder: (context, state) {
            final userData = state.userProfile!.data;
            switch (state.userProfile!.status) {
              case StateStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case StateStatus.error:
                return Center(
                  child: CustomTexts.header1('nodata found'),
                );
              case StateStatus.success:
                return SafeArea(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: NetworkImage(userData!
                                            .profileImage !=
                                        null
                                    ? userData.profileImage!
                                    : 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // CustomTexts.labelText(
                                  //     '${userData.posts != null ? userData.posts!.length : 0}'),
                                  CustomTexts.text15('Posts'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // CustomTexts.labelText(
                                  //     '${userData.followers != null ? userData.followers!.length : 0}'),
                                  CustomTexts.text15('Followers'),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // CustomTexts.labelText(
                                  //     '${userData.following != null ? userData.following!.length : 0}'),
                                  CustomTexts.text15('Following'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CustomTexts.header1(userData.userName != null
                              ? userData.userName!
                              : ''),
                        ),
                        DefaultTabController(
                          length: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomTexts.labelText('posts'),
                              CustomTexts.labelText('Tags'),
                            ],
                          ),
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return PostCard(
                                followings: state.following,
                                post: state.userPosts!.data![index]!,
                                user: state.userProfile!.data!,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 20,
                              );
                            },
                            itemCount: state.userPosts!.data!.length),
                      ],
                    ),
                  ),
                ));
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
