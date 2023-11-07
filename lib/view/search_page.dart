import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/controllers/search_account_bloc/search_account_bloc.dart';
import 'package:weshare/core/helpers/debouncer.dart';

import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 1000);
    TextEditingController searchController = TextEditingController();
    return BlocBuilder<UserprofileBloc, UserprofileState>(
      builder: (context, userState) {
        return Scaffold(
          appBar: AppBar(title: CustomTexts.header1('WeShare')),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: searchController,
                    onChanged: (value) {
                      debouncer.run(() {
                        BlocProvider.of<SearchAccountBloc>(context).add(
                            SearchAccountEvent.searchAccount(
                                value: value,
                                userId: userState.userProfile!.data!.userid!));
                      });
                    },
                  ),
                ),
                BlocBuilder<SearchAccountBloc, SearchAccountState>(
                  builder: (context, searcState) {
                    switch (searcState.searchResult.status) {
                      case StateStatus.loading:
                        return const Center(
                          child: CircularProgressIndicator(),
                        );

                      case StateStatus.error:
                        return Center(
                          child: CustomTexts.header1('nodata found'),
                        );
                      case StateStatus.success:
                        return ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => searcState
                                  .searchResult.data!.userlist!.isEmpty
                              ? ListTile(
                                  title: CustomTexts.labelText('No data found'),
                                )
                              : ListTile(
                                  title: CustomTexts.labelText(searcState
                                      .searchResult
                                      .data!
                                      .userlist![index]
                                      .userName!),
                                  subtitle: CustomTexts.labelText(searcState
                                      .searchResult
                                      .data!
                                      .userlist![index]
                                      .email!),
                                  trailing: ElevatedButton(
                                      onPressed: () {
                                        BlocProvider.of<UserprofileBloc>(
                                                context)
                                            .add(UserprofileEvent
                                                .followAnAccount(
                                                    acountId: searcState
                                                        .searchResult
                                                        .data!
                                                        .userlist![index]
                                                        .userid!,
                                                    userId: userState
                                                        .userProfile!
                                                        .data!
                                                        .userid!,
                                                    following:
                                                        userState.following));
                                      },
                                      child: Text(userState.following.contains(
                                              searcState.searchResult.data!
                                                  .userlist![index].userid!)
                                          ? 'unfollow'
                                          : 'follow')),
                                ),
                          itemCount: searcState
                                  .searchResult.data!.userlist!.isEmpty
                              ? 1
                              : searcState.searchResult.data!.userlist!.length,
                        );
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
