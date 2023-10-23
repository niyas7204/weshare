import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/components/form_field.dart';
import 'package:weshare/constants/logo.dart';
import 'package:weshare/constants/sizes.dart';
import 'package:weshare/controllers/user_auth/user_authentication_bloc.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/utils/custom_texts.dart';
import 'package:weshare/view/splashscreen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AlertdiologeWidgets alertcontroller = Get.put(AlertdiologeWidgets());
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    List<TextEditingController> controllers = [
      usernamecontroller,
      emailcontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    final formKey = GlobalKey<FormState>();
    var labels = ['User Name', 'Email', 'Password', 'Confirm Password'];
    return BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
      listener: (context, state) {
        if (state.userSignUp!.status == StateStatus.success) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const SplashScreen(),
          ));
        } else if (state.userSignUp!.status == StateStatus.error) {
          alertcontroller.warnigAlert(state.userSignUp!.errorMessage!);
        }
        log(state.userSignUp!.status.toString());
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Stack(
            children: [
              state.userSignUp!.status == StateStatus.loading
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
                      CustomTexts.header1('Sign Up'),
                      Form(
                          key: formKey,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: labels.length,
                              itemBuilder: (context, index) => CustomTextField(
                                  label: labels[index],
                                  controller: controllers[index],
                                  formKey: formKey))),
                      SpaceSized.space10H,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<UserAuthenticationBloc>(context)
                                .add(UserAuthenticationEvent.userSignUP(
                                    controllers: controllers));
                          },
                          child: CustomTexts.labelText('Sign UP')),
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
