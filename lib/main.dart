import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:weshare/features/user_auth/view_model/user_authentication_bloc.dart';
import 'package:weshare/graphql/client/graphql_client.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/controllers/search_account_bloc/search_account_bloc.dart';
import 'package:weshare/controllers/upload_posts/upload_post_bloc.dart';
import 'package:weshare/data/data_handler/compount_user_data.dart';
import 'package:weshare/data/data_handler/follow_implimentation.dart';
import 'package:weshare/data/data_handler/search_account_implimentaion.dart';
import 'package:weshare/data/data_handler/upload_post.dart';
import 'package:weshare/data/data_handler/user_auth_implimentation.dart';
import 'package:weshare/firebase_options.dart';
import 'package:weshare/view/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  GraphQlClientGenaration.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              UserprofileBloc(UserDataImplimentation(), FollowImplimentation()),
        ),
        BlocProvider(
          create: (context) => UserAuthenticationBloc(
              UserAuthImplimentaion(), UploadPostImplimentaion()),
        ),
        BlocProvider(
          create: (context) => UploadPostBloc(UploadPostImplimentaion()),
        ),
        BlocProvider(
            create: (context) =>
                SearchAccountBloc(SearchAccountImplimentation())),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const SplashScreen()),
    );
  }
}
