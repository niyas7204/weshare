import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/models/post_model.dart';

class SharePostsimplimentaion implements SharedPostService {
  @override
  Future<StateResponse<SharedPostModel>> getsharedPosts(
      {required List friends}) async {
    final String query = '''query MyQuery {
  post(where: {senderId: {_in: $friends}}) {
    postId
    likes
    tags
    textFeed
    imageFeed
    senderId
    senderName
  }
}''';
    try {
      final queryOptions = QueryOptions(document: gql(query));

      final QueryResult result =
          await GraphQlClientGenaration.graphQLClient.query(queryOptions);

      SharedPostModel sharedPosts =
          SharedPostModel.fromMap(result.data as Map<String, dynamic>);

      return StateResponse.success(sharedPosts);
    } on NetworkException {
      return StateResponse.error('Network Failure');
    } catch (e) {
      return StateResponse.error('Network Failure');
    }
  }
}
