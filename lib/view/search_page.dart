import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/controllers/search_account_bloc/search_account_bloc.dart';
import 'package:weshare/core/helpers/debouncer.dart';

import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 1000);
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          onChanged: (value) {
            debouncer.run(() {
              BlocProvider.of<SearchAccountBloc>(context)
                  .add(SearchAccountEvent.searchAccount(value: value));
            });
          },
        ),
      ),
      body: BlocBuilder<SearchAccountBloc, SearchAccountState>(
        builder: (context, state) {
          switch (state.searchResult.status) {
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
                  child: ListView.builder(
                itemBuilder: (context, index) =>
                    state.searchResult.data!.userlist!.isEmpty
                        ? ListTile(
                            title: CustomTexts.labelText('No data found'),
                          )
                        : ListTile(
                            title: CustomTexts.labelText(state
                                .searchResult.data!.userlist![index].userName!),
                          ),
                itemCount: state.searchResult.data!.userlist!.isEmpty
                    ? 1
                    : state.searchResult.data!.userlist!.length,
              ));
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
