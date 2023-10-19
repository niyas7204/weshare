import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/search_user_service.dart';
import 'package:weshare/models/user_profile_model.dart';

class SearchAccountImplimentation implements SearchAccountService {
  @override
  Future<StateResponse<UserList>> searchAccount({required String value}) async {
    final String query = '''query MyQuery {
  user(where: {user_Name: {_regex: "$value"}}) {
    userId
    user_Name
    email
  }
}
''';

    try {
      final queryOption = QueryOptions(document: gql(query));

      final QueryResult result =
          await GraphQlClientGenaration.graphQLClient.query(queryOption);
      log(result.toString());
      UserList user = UserList.fromMap(result.data as Map<String, dynamic>);
      return StateResponse.success(user);
    } catch (e) {
      log('errrr $e');
      return StateResponse.error('search failed');
    }
  }
}
