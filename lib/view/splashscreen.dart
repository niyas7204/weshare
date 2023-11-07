import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weshare/constants/logo.dart';
import 'package:lottie/lottie.dart';
import 'package:weshare/controllers/User_Data/userprofile_bloc.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/view/home_page.dart';
import 'package:weshare/view/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log('build');
    BlocProvider.of<UserAuthenticationBloc>(context)
        .add(const UserAuthenticationEvent.checkUserLoged());
    return Scaffold(
        body: MultiBlocListener(
      listeners: [
        BlocListener<UserprofileBloc, UserprofileState>(
          listener: (context, state) {
            log('profile state ${state.userProfile!.status}');
            if (state.userProfile!.status == StateStatus.success) {
              log('navigate home');
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomePage(),
              ));
            }
          },
        ),
        BlocListener<UserAuthenticationBloc, UserAuthenticationState>(
          listener: (context, state) {
            log('auth state ${state.logedUser!.status}');
            if (state.logedUser!.status == StateStatus.success) {
              log('auth success');
              BlocProvider.of<UserprofileBloc>(context).add(
                  UserprofileEvent.getuserprofile(
                      userId: state.logedUser!.data!));
            } else if (state.logedUser!.status == StateStatus.error) {
              log('auth error');
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
            }
          },
        ),
      ],
      child: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogo.baseLogo,
            SizedBox(
              height: 200,
              width: 200,
              child: LottieBuilder.asset(
                  "assets/animations/Animation - 1697727093744.json"),
            ),
          ],
        ),
      )),
    ));
  }
}
