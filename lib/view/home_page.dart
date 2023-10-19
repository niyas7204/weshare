import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/components/post_card.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';
import 'package:weshare/view/profile_page.dart';
import 'package:weshare/view/search_page.dart';
import 'package:weshare/view/upload_post.dart';

class HomePage extends StatelessWidget {
  final String userId;
  const HomePage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserprofileBloc, UserprofileState>(
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.userProfile!.status!) {
          case StateStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case StateStatus.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case StateStatus.error:
            return Center(
              child: Text(state.userProfile!.errorMessage!),
            );
          case StateStatus.success:
            return Scaffold(
              appBar: AppBar(
                title: CustomTexts.header1('WeShare'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UploadPostScreen(
                            user: state.userProfile!.data!,
                          ),
                        ));
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ));
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 12, top: 5, bottom: 5),
                      child: ClipOval(
                        child: Image.network(
                            'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              body: SafeArea(
                  child: state.sharedPost!.data!.isNotEmpty
                      ? ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return PostCard(
                                post: state.sharedPost!.data![index]!,
                                user: state.userProfile!.data!);
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                          itemCount: state.sharedPost!.data!.length)
                      : Center(
                          child: CustomTexts.labelText(
                              'No Data from your friends'),
                        )),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
