import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/components/custom_login.dart';
import 'package:weshare/components/custom_signup.dart';

import 'package:weshare/constants/logo.dart';
import 'package:weshare/constants/sizes.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';
import 'package:weshare/view/forgot_password_page.dart';
import 'package:weshare/view/signup.dart';
import 'package:weshare/view/splashscreen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    log('login bild');
    AlertdiologeWidgets alertcontroller = Get.put(AlertdiologeWidgets());
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    List<TextEditingController> logincontrollers = [
      emailcontroller,
      passwordcontroller,
    ];
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    List<TextEditingController> signUpcontrollers = [
      usernamecontroller,
      emailcontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    final formKey = GlobalKey<FormState>();
    var SignUPlabels = ['User Name', 'Email', 'Password', 'Confirm Password'];

    var loginlabels = ['Email', 'Password'];
    return BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
      listener: (context, state) {
        if (state.loginState!.status == StateStatus.success) {
          log('login listen'); //when login success navigate to home page
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const SplashScreen()),
              (route) => false);
        } else if (state.loginState!.status == StateStatus.error) {
          //if login is failed show warnig message

          alertcontroller.warnigAlert(state.loginState!.errorMessage!);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              //show when loading indicater when login function works
              state.loginState!.status == StateStatus.loading
                  ? Container(
                      color: const Color.fromARGB(209, 49, 49, 49),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),
              Center(
                child: SingleChildScrollView(
                    child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  color: Colors.blueGrey.shade100.withOpacity(.3),
                  child: Column(
                    children: [
                      AppLogo.baseLogo,
                      state.authSelection == AuthSelection.login
                          ? CustomLogin(
                              formKey: formKey,
                              labels: loginlabels,
                              controllers: logincontrollers)
                          : CustomSignUp(
                              formKey: formKey,
                              labels: SignUPlabels,
                              controllers: signUpcontrollers),
                      SpaceSized.space10H,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTexts.text15("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ));
                            },
                            child: const Text("Create New",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 51, 150, 232))),
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ));
                        },
                        child: const Text("Forgot Password?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 51, 150, 232))),
                      ),
                      SpaceSized.space10H,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<UserAuthenticationBloc>(context)
                                .add(UserAuthenticationEvent.userLogin(
                                    controllers: logincontrollers));
                          },
                          child: CustomTexts.labelText('Login')),
                    ],
                  ),
                )),
              )
            ],
          )),
        );
      },
    );
  }
}
