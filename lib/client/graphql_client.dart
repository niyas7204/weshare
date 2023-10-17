import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlClientGenaration {
  static late GraphQLClient graphQLClient;
  GraphQlClientGenaration.init() {
    final HttpLink httpLink =
        HttpLink('https://ace-mink-23.hasura.app/v1/graphql', defaultHeaders: {
      'x-hasura-admin-secret':
          'TcdpMdRwWHHDzJKsXDF0bvfpDNKZ0VT7XiND9ydYDaX3OYzPHphtdHqE7a7DKcKO',
      'Content-Type': 'application/json',
    });
    graphQLClient = GraphQLClient(link: httpLink, cache: GraphQLCache());
  }
}
