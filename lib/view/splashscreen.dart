import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weshare/constants/logo.dart';
import 'package:lottie/lottie.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/view/home_page.dart';
import 'package:weshare/view/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: checkLog(),
        builder: (context, snapshot) {
          return Scaffold(
            body: SafeArea(
              child: FutureBuilder(
                  future: checkLog(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      log('${snapshot.data!.value1}');
                      log('${snapshot.data!.value2}');
                      if (snapshot.data!.value2) {
                        BlocProvider.of<UserprofileBloc>(context).add(
                            UserprofileEvent.getuserprofile(
                                userId: snapshot.data!.value1!));
                        BlocListener<UserprofileBloc, UserprofileState>(
                          listener: (context, state) {
                            if (state.userProfile!.status ==
                                StateStatus.success) {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(userId: snapshot.data!.value1!),
                              ));
                            }
                          },
                        );
                      } else {
                        log('e 1');
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                      }
                    } else {
                      log('e 2');
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                    }

                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppLogo.baseLogo,
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: LottieBuilder.asset(
                                "assets/animations/Animation - 1697727093744.json"),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          );
        });
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
