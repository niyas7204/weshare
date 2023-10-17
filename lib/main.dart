import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/controllers/upload_posts/upload_post_bloc.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/data/data_handler/sharedpost_implimentation.dart';
import 'package:weshare/data/data_handler/upload_post.dart';
import 'package:weshare/data/data_handler/user_auth_implimentation.dart';
import 'package:weshare/data/data_handler/user_profile_implimentation.dart';
import 'package:weshare/firebase_options.dart';
import 'package:weshare/models/current_user_model.dart';
import 'package:weshare/view/home_page.dart';
import 'package:weshare/view/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  GraphQlClientGenaration.init();
  Hive.registerAdapter(CurrentUserModelAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserprofileBloc(
              UserProfileImplimentation(), SharePostsimplimentaion()),
        ),
        BlocProvider(
          create: (context) => UserAuthenticationBloc(UserAuthImplimentaion()),
        ),
        BlocProvider(
          create: (context) => UploadPostBloc(UploadPostImplimentaion()),
        ),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: FutureBuilder(
            future: checkLog(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.value2) {
                  log('value ${snapshot.data!.value1}');
                  return HomePage(userId: snapshot.data!.value1!);
                } else {
                  return const LoginPage();
                }
              } else {
                return const LoginPage();
              }
            },
          )),
    );
  }
}

Future<Tuple2<String?, bool>> checkLog() async {
  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    return tuple2(currentUser.uid, true);
  } else {
    return tuple2(null, false);
  }
}
